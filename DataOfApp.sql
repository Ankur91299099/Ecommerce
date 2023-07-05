
/* READ THIS - First Execute Schema Only File, and then Execute this File.*/

USE GroceryStoreApp
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (1, N'Juice', N'Fruit Juice')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (2, N'Sauce', N'Tomato Sauce')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (3, N'Sauce', N'Chilli Sauce')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (4, N'Bakery product', N'Bread')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (5, N'Bakery product', N'Cookies')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (6, N'Sauce', N'Red Chilli Sauce')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (1, N'Diwali dhamaka', 25)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (2, N'Christmas sale', 15)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (3, N'Ausgust special', 5)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (4, N'Crazy shopping sale', 40)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (5, N'Holi sale', 10)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (0, N'No Discount Available', 0)
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (1, N'Mango Drink', N'Original Flavour, Refreshing, 1.2|-Pet Bottle', 1, 1, 90.00, 560, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (2, N'Frooti', N'Drink - Fresh''N'' Juicy Mango,200ml-Tetra', 1, 3, 15.00, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (3, N'Slice', N'Thickest Mango Drink, 1.75L', 1, 2, 90.00, 766, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (4, N'Mango Delight', N'Delight Fruit Juice - Mango, 180 ml- Carton', 1, 1, 40.00, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (5, N'Natural juice', N'Guava Nata de coco, 200 ml', 1, 1, 30.00, 234, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (6, N'Tomato Katchup', N'Classic Blend, Rich & Thick Condiment, 900g - Bottel', 2, 5, 98.00, 245, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (7, N'Tomato Sauce', N'NoOnion No Garlic, 500g - Bottle', 2, 3, 120.00, 1000, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (8, N'Kissan Sauce', N'Fresh Tomato Ketchup- Tangy, 1.2 Kg - Pouch', 2, 4, 110.00, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (9, N'Red Souce', N'Tomato Ketchup, 1 Kg - Bottle', 2, 5, 147.00, 1200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (10, N'Pichkoo', N'Rich Tomato Ketchup, Tangy Flavour, 80 g - Pouch', 2, 2, 15.00, 250, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (11, N'Milk Slice', N'Fresh Milk White bread', 4, 1, 50.00, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (12, N'Sandwich Bread', N'100% Whole White Slice', 4, 5, 45.00, 178, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (13, N'English Oven', N'Freshly Backed Sandwich Bread', 4, 2, 47.00, 350, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (14, N'English Oven', N'Multi Grain Bread ', 4, 2, 55.00, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (15, N'Modern Bread', N'Family Special With Added Vitamins', 4, 4, 45.00, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (16, N'Chocochip', N'Good Day Cookies, 400 g', 5, 5, 140.00, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (17, N'Choco Chunks', N'Sunfeast Dark Fantasy Deserts, Filled Cookies Reimagined', 5, 3, 160.00, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (18, N'Pista Cookies', N'Good Day Pista Badam Cookies', 5, 1, 190.00, 500, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (19, N'Chocochip', N'Parle Hide & Seek Milano Collections Chocolate Chip Biscuits', 5, 1, 130.00, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (20, N'Moom''s Magic', N'Enrich with Cashew and Almonds', 5, 2, 35.00, 800, N'')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (1, N'Cash', N'', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (2, N'Card Payment', N'Bank', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (3, N'Net Banking', N'SBI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (4, N'Net Banking', N'ICICI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (5, N'Net Banking', N'Bank of Maharashtra', N'False', N'server down')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (6, N'UPI', N'Google Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (7, N'UPI', N'Phone Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (8, N'UPI', N'BHIM Pay', N'True', N'')
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO