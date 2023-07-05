import { Component, ElementRef, Input, OnInit, Type, ViewChild, ViewContainerRef } from '@angular/core';
import { Product } from '../models/models';
import { UtilityService } from '../services/utility.service';
import { EditProductComponent } from '../edit-product/edit-product.component';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css'],
})
export class ProductComponent implements OnInit {
  @ViewChild('modalTitle') modalTitle!: ElementRef;
  @ViewChild('container', { read: ViewContainerRef, static: true })
  container!: ViewContainerRef;


  @Input() view: 'grid' | 'list' | 'currcartitem' | 'prevcartitem' = 'grid';
  @Input() product: Product = {
    id: 0,
    title: '',
    description: '',
    price: 0,
    quantity: 0,
    productCategory: {
      id: 1,
      category: '',
      subCategory: '',
    },
    offer: {
      id: 1,
      title: '',
      discount: 0,
    },
    imageName: '',
  };

  constructor(public utilityService: UtilityService) {}
  reload()
  {
    window.location.reload();
  }
ngOnInit(): void {}


openModal(name: string) {
//   this.container.clear();
// console.log("Hello model if if ");
//   let componentType!: Type<any>;
//   if (name === 'register') {
//     console.log("Hello model");
//     componentType = EditProductComponent;
//     this.modalTitle.nativeElement.textContent = 'Enter Register Information';
//   }
   
//   this.container.createComponent(componentType);
}

}
