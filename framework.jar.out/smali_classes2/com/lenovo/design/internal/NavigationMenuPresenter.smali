.class public Lcom/lenovo/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field private mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private mCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mId:I

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

.field private mPaddingSeparator:I

.field private mPaddingTopDefault:I

.field private mTextAppearance:I

.field private mTextAppearanceSet:Z

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/design/internal/NavigationMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    return v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Lcom/lenovo/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/lenovo/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 217
    return-void
.end method

.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mId:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x9040018

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/design/internal/NavigationMenuView;

    iput-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    .line 101
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lcom/lenovo/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x9040015

    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/design/internal/NavigationMenuView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/design/internal/NavigationMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v0, p0}, Lcom/lenovo/design/internal/NavigationMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 210
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x9080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    .line 92
    const v1, 0x9080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    .line 94
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 190
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Lcom/lenovo/design/internal/NavigationMenuView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 191
    .local v1, "positionInAdapter":I
    if-ltz v1, :cond_1

    .line 192
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 193
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 194
    .local v0, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0, p0, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/lenovo/internal/view/menu/MenuPresenter;I)Z

    .line 198
    invoke-virtual {p0, v3}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 201
    .end local v0    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 177
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 178
    .local v2, "state":Landroid/os/Bundle;
    const-string v3, "android:menu:list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 179
    .local v1, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 180
    iget-object v3, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v3, v1}, Lcom/lenovo/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 182
    :cond_0
    const-string v3, "android:menu:adapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "adapterState":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    if-eqz v2, :cond_0

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 166
    .local v0, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v2, v0}, Lcom/lenovo/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 167
    const-string v2, "android:menu:list"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 169
    .end local v0    # "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "android:menu:adapter"

    iget-object v3, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    :cond_1
    return-object v1
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    iget v1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    iget-object v2, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mMenuView:Lcom/lenovo/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Lcom/lenovo/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/lenovo/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 224
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 123
    return-void
.end method

.method public setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 205
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mId:I

    .line 159
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 258
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 234
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Llenovo/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 247
    iput p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 250
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 244
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuPresenter;->mAdapter:Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_0
    return-void
.end method
