import { Component, OnInit } from '@angular/core';
import { SuggestedProduct } from '../models/models';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
})
export class HomeComponent implements OnInit {
  suggestedProducts: SuggestedProduct[] = [
    {
      banerimage: 'Baner/baner-juice.jpg',
      category: {
        id: 0,
        category: 'Juice',

        subCategory: 'Fruit Juice'
      },
    },
    {
      banerimage: 'Baner/baner-katchup1.jpg',
      category: {
        id: 1,
      category: 'Sauce',

        subCategory: 'Tomato Sauce'
      },
    },
    {
      banerimage: 'Baner/baner-bread.jpg',
      category: {
        id: 1,
        category: 'Bakery product',

        subCategory: 'Bread'

      },
    },
    {

      banerimage: 'Baner/baner-cookies.jpg',

      category: {

        id: 3,

        category: 'Bakery product',

        subCategory: 'Cookies'

      },

    },
  ];
  constructor() {}

  ngOnInit(): void {}
}
