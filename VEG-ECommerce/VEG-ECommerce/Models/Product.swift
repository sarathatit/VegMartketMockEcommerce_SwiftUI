//
//  Product.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 18/11/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
                   Product(name: "All Vegies",
                           image: "All vegies",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 1050),
                   Product(name: "Beetroot",
                           image: "beetroot",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 60),
                   Product(name: "Bokchoy",
                           image: "bokchoy",
                           description: "",
                           supplier: "Sk products",
                           price: 180),
                   Product(name: "Capsicum",
                           image: "capsicum",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 110),
                   Product(name: "Cauliflower",
                           image: "cauliflower",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 85),
                   Product(name: "EggPlant",
                           image: "eggPlant",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 250),
                   Product(name: "Potato",
                           image: "potato",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 125),
                   Product(name: "Pumpkin",
                           image: "pumpkin",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 20),
                   Product(name: "Redchilli",
                           image: "redchilli",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 362),
                   Product(name: "Spinach",
                           image: "spinach",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 30),
                   Product(name: "Tomoato",
                           image: "tomoato",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 55),
                   Product(name: "White onion",
                           image: "white onion",
                           description: "Vegetables are edible parts of plants that are commonly consumed as a vital part of a balanced diet. They are rich in essential nutrients like vitamins, minerals, dietary fiber, and antioxidants, contributing to overall health and well-being. Vegetables come in a wide variety of types, colors, textures, and flavors, making them versatile ingredients in global cuisines.",
                           supplier: "Sk products",
                           price: 74)]
