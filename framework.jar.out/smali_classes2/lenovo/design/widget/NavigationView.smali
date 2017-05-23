.class public Llenovo/design/widget/NavigationView;
.super Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/NavigationView$SavedState;,
        Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private mListener:Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

.field private mMaxWidth:I

.field private final mMenu:Lcom/lenovo/design/internal/NavigationMenu;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Llenovo/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    .line 74
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Llenovo/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v6, Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-direct {v6}, Lcom/lenovo/design/internal/NavigationMenuPresenter;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    .line 98
    new-instance v6, Lcom/lenovo/design/internal/NavigationMenu;

    invoke-direct {v6, p1}, Lcom/lenovo/design/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    .line 101
    sget-object v6, Lcom/lenovo/internal/R$styleable;->NavigationView:[I

    const v7, 0x90302e8

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->setElevation(F)V

    .line 111
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->setFitsSystemWindows(Z)V

    .line 114
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llenovo/design/widget/NavigationView;->mMaxWidth:I

    .line 117
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 118
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 123
    .local v2, "itemIconTint":Landroid/content/res/ColorStateList;
    :goto_0
    const/4 v5, 0x0

    .line 124
    .local v5, "textAppearanceSet":Z
    const/4 v4, 0x0

    .line 125
    .local v4, "textAppearance":I
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 127
    const/4 v5, 0x1

    .line 130
    :cond_1
    const/4 v3, 0x0

    .line 131
    .local v3, "itemTextColor":Landroid/content/res/ColorStateList;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 135
    :cond_2
    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 137
    const v6, 0x1010036

    invoke-direct {p0, v6}, Llenovo/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 140
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    .local v1, "itemBackground":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    new-instance v7, Llenovo/design/widget/NavigationView$1;

    invoke-direct {v7, p0}, Llenovo/design/widget/NavigationView$1;-><init>(Llenovo/design/widget/NavigationView;)V

    invoke-virtual {v6, v7}, Lcom/lenovo/design/internal/NavigationMenu;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 151
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setId(I)V

    .line 152
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    iget-object v7, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    invoke-virtual {v6, p1, v7}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 153
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    if-eqz v5, :cond_4

    .line 155
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, v4}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 157
    :cond_4
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, v3}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, v1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    iget-object v7, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, v7}, Lcom/lenovo/design/internal/NavigationMenu;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 160
    iget-object v6, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 162
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->inflateMenu(I)V

    .line 166
    :cond_5
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 167
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Llenovo/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 170
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-void

    .line 120
    .end local v1    # "itemBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "itemIconTint":Landroid/content/res/ColorStateList;
    .end local v3    # "itemTextColor":Landroid/content/res/ColorStateList;
    .end local v4    # "textAppearance":I
    .end local v5    # "textAppearanceSet":Z
    :cond_7
    const v6, 0x1010038

    invoke-direct {p0, v6}, Llenovo/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .restart local v2    # "itemIconTint":Landroid/content/res/ColorStateList;
    goto/16 :goto_0
.end method

.method static synthetic access$000(Llenovo/design/widget/NavigationView;)Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/NavigationView;

    .prologue
    .line 71
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mListener:Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 373
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 374
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Llenovo/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v4

    .line 377
    :cond_1
    invoke-virtual {p0}, Llenovo/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 378
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Llenovo/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010433

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 382
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 383
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Llenovo/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Llenovo/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Llenovo/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Llenovo/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    aput v7, v6, v9

    aput v1, v6, v8

    aput v2, v6, v10

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Llenovo/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 369
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 245
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 226
    invoke-direct {p0}, Llenovo/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 227
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 228
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 229
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 213
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 214
    return-void

    .line 205
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Llenovo/design/widget/NavigationView;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 207
    goto :goto_0

    .line 209
    :sswitch_2
    iget v0, p0, Llenovo/design/widget/NavigationView;->mMaxWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .prologue
    .line 184
    move-object v0, p1

    check-cast v0, Llenovo/design/widget/NavigationView$SavedState;

    .line 185
    .local v0, "state":Llenovo/design/widget/NavigationView$SavedState;
    invoke-virtual {v0}, Llenovo/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 186
    iget-object v1, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    iget-object v2, v0, Llenovo/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/lenovo/design/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 176
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Llenovo/design/widget/NavigationView$SavedState;

    invoke-direct {v0, v1}, Llenovo/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 177
    .local v0, "state":Llenovo/design/widget/NavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Llenovo/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 178
    iget-object v2, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    iget-object v3, v0, Llenovo/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/lenovo/design/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 179
    return-object v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 264
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 2
    .param p1, "id"    # I
        .annotation build Llenovo/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 350
    iget-object v1, p0, Llenovo/design/widget/NavigationView;->mMenu:Lcom/lenovo/design/internal/NavigationMenu;

    invoke-virtual {v1, p1}, Lcom/lenovo/design/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 351
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    check-cast v0, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .end local v0    # "item":Landroid/view/MenuItem;
    invoke-virtual {v1, v0}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setCheckedItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 354
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 341
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 342
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 331
    invoke-virtual {p0}, Llenovo/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 287
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Llenovo/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 363
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    iget-object v0, p0, Llenovo/design/widget/NavigationView;->mPresenter:Lcom/lenovo/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/lenovo/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    return-void
.end method

.method public setNavigationItemSelectedListener(Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

    .prologue
    .line 195
    iput-object p1, p0, Llenovo/design/widget/NavigationView;->mListener:Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

    .line 196
    return-void
.end method
