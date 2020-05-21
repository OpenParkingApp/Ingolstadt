// This is a workaround until Swift packages properly support resources.
// swiftlint:disable file_length

import Datasource
import Foundation

// swiftlint:disable:next force_try
let geodata = try! JSONDecoder().decode(GeoJson.self, from: geojson.data(using: .utf8)!)
let geojson = """
{
  "type": "FeatureCollection",
  "features": [{
      "type": "Feature",
      "geometry": {
          "type": "Point",
          "coordinates": [
              11.4237200,
              48.7650800
          ]
      },
      "properties": {
          "name": "Ingolstadt",
          "type": "city",
          "url": "http://www.ingolstadt.mobi/lotauskunft.cfm",
          "source": "http://www.ingolstadt.mobi/lotauskunft.cfm",
      "active_support": true
      }
  }, {
      "type": "Feature",
      "properties": {
        "name": "Hauptbahnhof",
        "total": 812,
        "address": "Elisabethstraße 3",
        "type": "structure"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.437298655509947,
          48.74315480852817
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Hauptbahnhof Ost",
        "total": 240,
        "address": "Martin-Hemm-Straße 8",
        "type": "structure"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.439857482910156,
          48.744905834783395
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Hallenbad",
        "total": 836,
        "address": "Jahnstraße 9",
        "type": "lot"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.42030954360962,
          48.760856819513116
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Festplatz",
        "total": 1437,
        "address": "Dreizehnerstraße",
        "type": "lot"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.423431634902954,
          48.7706936821076
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Klinikum"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.374958753585815,
          48.771443213043426
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Nordbahnhof",
        "total": 252,
        "address": "Am Nordbahnhof 3",
        "type": "lot"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.431505084037779,
          48.77336648651627
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Südl. Ringstraße",
        "total": 257,
        "address": "Südliche Ringstraße",
        "type": "lot"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.437261104583738,
          48.75859357346676
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Congressgarage",
        "total": 340,
        "address": "Schloßlände 25",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.433635, 48.764559
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Münster",
        "total": 384,
        "address": "Bergbräustraße",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.419150829315186,
          48.764354041367575
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Reduit Tilly",
        "total": 436,
        "address": "Regimentstraße",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.433484554290771,
          48.759930315491225
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Schloss",
        "total": 435,
        "address": "Esplanade",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.43128514289856,
          48.76627758638221
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Theater-Ost",
        "total": 682,
        "address": "Schloßländle",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.430437564849852,
          48.76376352655507
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Theater-West",
        "total": 599,
        "address": "Schutterstraße",
        "type": "underground"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.427175998687744,
          48.76281232342508
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Hauptbahnhof West",
        "total": 640,
        "address": "Elisabethstraße",
        "type": "structure"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          11.437122,
          48.743594
        ]
      }
    }
  ]
}
"""
