import { Component, Input, OnInit } from '@angular/core';
import { Category, NavigationItem, NewProductt, Product } from '../models/models';
import { NavigationService } from '../services/navigation.service';
import { UtilityService } from '../services/utility.service';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrls: ['./admin-panel.component.css']
})
export class AdminPanelComponent implements OnInit {
  newProduct!: FormGroup;
  message: any;
  /**
   *
   */
  constructor(  private fb: FormBuilder,
    private navigationService: NavigationService) {
    
  }



  ngOnInit(): void {
    this.newProduct = this.fb.group({
      ProductId: [
        '',
        [
          Validators.required,
        ],
      ],
      Title: [
        '',
        [
          Validators.required,
          Validators.minLength(2),
        ],
      ],
      Description: [
        '',
        [
          Validators.required,
          Validators.minLength(10),
        ],
      ],
      CategoryId: [
        '',
        [
          Validators.required,
        ],
      ],
      OfferId: [
        '',
        [
          Validators.required,
        ],
      ],
      Price: [
        '',
        [
          Validators.required,
        ],
      ],
      Quantity: [
        '',
        [
          Validators.required,
        ],
      ],
      ImageUrl: [
        '',
        [
          Validators.required,
        ],
      ],
    });
  }

  addProductt() {
    let products: NewProductt = {
      ProductId: this.productId.value,
      Title: this.title.value,
      Description: this.description.value,
      CategoryId: this.categoryId.value,
      OfferId: this.offerId.value,
      Price: this.price.value,
      Quantity: this.quantity.value,
      ImageName: this.imageUrl.value,
    };
    
  


   
    this.newProduct.reset();
    alert("Product added Successfully");
    this.navigationService.addProduct(products).subscribe((res: any) => {
      this.message = res.toString();
    });
  }



  get productId(): FormControl {
    return this.newProduct.get('ProductId') as FormControl;
  }
  
  get title(): FormControl {
    return this.newProduct.get('Title') as FormControl;
  }

  get description(): FormControl {
    return this.newProduct.get('Description') as FormControl;
  }
  get categoryId(): FormControl {
    return this.newProduct.get('CategoryId') as FormControl;
  }
  get offerId(): FormControl {
    return this.newProduct.get('OfferId') as FormControl;
  }
  get price(): FormControl {
    return this.newProduct.get('Price') as FormControl;
  }
  get quantity(): FormControl {
    return this.newProduct.get('Quantity') as FormControl;
  }
  get imageUrl(): FormControl {
    return this.newProduct.get('ImageUrl') as FormControl;
  }

   
  
   

}