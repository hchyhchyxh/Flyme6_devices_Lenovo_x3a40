.class Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation


# static fields
.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

.field private mUpdateSuspended:Z

.field final synthetic this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lcom/lenovo/design/internal/NavigationMenuPresenter;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 280
    invoke-direct {p0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 281
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 447
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    invoke-virtual {v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 449
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_0

    .line 451
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 447
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method private prepareMenuItems()V
    .locals 17

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    if-eqz v14, :cond_0

    .line 444
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 383
    const/4 v2, -0x1

    .line 384
    .local v2, "currentGroupId":I
    const/4 v3, 0x0

    .line 385
    .local v3, "currentGroupStart":I
    const/4 v1, 0x0

    .line 386
    .local v1, "currentGroupHasIcon":Z
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v14}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$600(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "totalSize":I
    :goto_1
    if-ge v5, v13, :cond_f

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v14}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$600(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 388
    .local v6, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 391
    :cond_1
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 392
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 394
    :cond_2
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 395
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 396
    .local v9, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 397
    if-eqz v5, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static {v15}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$700(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->separator(II)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const/4 v10, 0x0

    .line 402
    .local v10, "subMenuHasIcon":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 403
    .local v12, "subMenuStart":I
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v8

    .local v8, "size":I
    :goto_2
    if-ge v7, v8, :cond_8

    .line 404
    invoke-interface {v9, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    check-cast v11, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 405
    .local v11, "subMenuItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 406
    if-nez v10, :cond_4

    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 407
    const/4 v10, 0x1

    .line 409
    :cond_4
    invoke-virtual {v11}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 410
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 412
    :cond_5
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 413
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 415
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 418
    .end local v11    # "subMenuItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_8
    if-eqz v10, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 386
    .end local v7    # "j":I
    .end local v8    # "size":I
    .end local v9    # "subMenu":Landroid/view/SubMenu;
    .end local v10    # "subMenuHasIcon":Z
    .end local v12    # "subMenuStart":I
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 423
    :cond_a
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    .line 424
    .local v4, "groupId":I
    if-eq v4, v2, :cond_e

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 426
    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_d

    const/4 v1, 0x1

    .line 427
    :goto_4
    if-eqz v5, :cond_b

    .line 428
    add-int/lit8 v3, v3, 0x1

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static {v15}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$700(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$700(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->separator(II)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_c

    .line 437
    const v14, 0x106000d

    invoke-virtual {v6, v14}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 439
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    move v2, v4

    goto :goto_3

    .line 426
    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 432
    :cond_e
    if-nez v1, :cond_b

    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 433
    const/4 v1, 0x1

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_5

    .line 443
    .end local v4    # "groupId":I
    .end local v6    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public createInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 470
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "android:menu:checked"

    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 295
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    .line 306
    .local v0, "item":Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->isSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x2

    .line 311
    :goto_0
    return v1

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 317
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    .line 318
    .local v0, "item":Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    .line 319
    .local v3, "viewType":I
    packed-switch v3, :pswitch_data_0

    .line 354
    :goto_0
    return-object p2

    .line 321
    :pswitch_0
    if-nez p2, :cond_0

    .line 322
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$000(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x9040014

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 325
    check-cast v1, Lcom/lenovo/design/internal/NavigationMenuItemView;

    .line 326
    .local v1, "itemView":Lcom/lenovo/design/internal/NavigationMenuItemView;
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$100(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 327
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$200(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v1}, Lcom/lenovo/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearance:I
    invoke-static {v5}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$300(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$400(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 331
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$400(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 333
    :cond_2
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$500(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$500(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/lenovo/design/internal/NavigationMenuItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    goto :goto_0

    .line 333
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 338
    .end local v1    # "itemView":Lcom/lenovo/design/internal/NavigationMenuItemView;
    :pswitch_1
    if-nez p2, :cond_4

    .line 339
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$000(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x9040017

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_4
    move-object v2, p2

    .line 342
    check-cast v2, Landroid/widget/TextView;

    .line 343
    .local v2, "subHeader":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "subHeader":Landroid/widget/TextView;
    :pswitch_2
    if-nez p2, :cond_5

    .line 347
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    # getter for: Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->access$000(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x9040016

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 350
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 370
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 371
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 478
    const-string v4, "android:menu:checked"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 479
    .local v0, "checkedItem":I
    if-eqz v0, :cond_2

    .line 480
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 481
    iget-object v4, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 482
    .local v2, "item":Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    invoke-virtual {v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v3

    .line 483
    .local v3, "menuItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 484
    invoke-virtual {p0, v3}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 488
    .end local v2    # "item":Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    .end local v3    # "menuItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1
    iput-boolean v5, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 489
    invoke-direct {p0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 491
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V
    .locals 2
    .param p1, "checkedItem"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 465
    :cond_2
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 466
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 495
    return-void
.end method
