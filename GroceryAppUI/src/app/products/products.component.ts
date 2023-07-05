import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Product } from '../models/models';
import { NavigationService } from '../services/navigation.service';
import { UtilityService } from '../services/utility.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css'],
})
export class ProductsComponent implements OnInit {
  view: 'grid' | 'list' = 'list';
  sortby: 'default' | 'htl' | 'lth' = 'default';
  products: Product[] = [];
  p:any;
  searchQuery: string='';
  filteredProducts: Product[]=[];
  constructor(
    private activatedRoute: ActivatedRoute,
    private navigationService: NavigationService,
    private utilityService: UtilityService
  ) {}

  ngOnInit(): void {
    this.activatedRoute.queryParams.subscribe((params: any) => {
      let category = params.category;
      let subcategory = params.subcategory;

      if (category && subcategory)
        this.navigationService
          .getProducts(category, subcategory, 10)
          .subscribe((res: any) => {
            this.products = res;
            this.filteredProducts=this.products;
          });
    });
  }
  
  sortByPrice(sortKey: string) {
    this.products.sort((a, b) => {
      if (sortKey === 'default') {
        return a.id > b.id ? 1 : -1;
      }
      return (
        (sortKey === 'htl' ? 1 : -1) *
        (this.utilityService.applyDiscount(a.price, a.offer.discount) >
        this.utilityService.applyDiscount(b.price, b.offer.discount)
          ? -1
          : 1)
      );
    });
  }

  performSearch() {

    if (this.searchQuery) {

      this.filteredProducts = this.products.filter(product => {
        return product.title.toLowerCase().includes(this.searchQuery.toLowerCase());});

    } else {this.filteredProducts = this.products;}}
}
