ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([CartId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]

GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_PaymentMethods] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_PaymentMethods]

GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Offers] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([OfferId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Offers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductCategories]

GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
