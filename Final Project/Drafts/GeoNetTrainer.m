constantShareTraining = 0.9;
citiesWHappiness = Import[CitiesWPositivness.mx"];
citiesPopular = Keys[citiesWHappiness];
citiesPositivness = Values[citiesWHappiness];

AssociationsFromPair[keys_List, vals_List] := MapThread[(#1 -> #2) &, {keys, vals}];
BuildDataset[city_, rating_Real, imgs_] := Module[{ratings},
	ratings = Table[rating, Length[imgs]];(*Same for all images within city*)
	AssociationsFromPair[imgs, ratings]
];
ImportSatellites[city_] := Import[StringJoin["Satellites/", EntityValue[city, "Name"], ".mx"]];

datasetSatellites = RandomSample[Flatten[MapThread[BuildDataset[#1, #2, ImportSatellites[#1]] &, {citiesPopular, citiesPositivness}]]];
datasetTrain = Take[datasetSatellites, constantShareTraining * Length[datasetSatellites]];
datasetValidate = Drop[datasetSatellites, constantShareTraining * Length[datasetSatellites]];

cnnFull = NetModel["ResNet-101 Trained on YFCC100m Geotagged Data"];
modelGeoCNN = NetFlatten[NetChain[{NetTake[cnnFull, "pool1"], LinearLayer[{}], LogisticSigmoid}], 1];
modelGeoCNN = NetTrain[modelGeoCNN, Association[{"Input"->Keys[datasetTrain],"Output"->Values[datasetTrain]}], All, ValidationSet->Association[{"Input"->Keys[datasetValidate],"Output"->Values[datasetValidate]}]];