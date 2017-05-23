.class public Lcom/lenovo/design/internal/NavigationMenuItemView;
.super Landroid/widget/TextView;
.source "NavigationMenuItemView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIconSize:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/lenovo/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mIconSize:I

    .line 56
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .prologue
    .line 76
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 77
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101042c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 79
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/lenovo/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 80
    sget-object v2, Lcom/lenovo/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 62
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 69
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 70
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 71
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void

    .line 62
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 132
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 133
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/lenovo/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/lenovo/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 136
    :cond_0
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 99
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 104
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 114
    iget v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mIconSize:I

    iget v1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    :cond_0
    invoke-virtual {p0, p1, v2, v2, v2}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 141
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/design/internal/NavigationMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/lenovo/design/internal/NavigationMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method
