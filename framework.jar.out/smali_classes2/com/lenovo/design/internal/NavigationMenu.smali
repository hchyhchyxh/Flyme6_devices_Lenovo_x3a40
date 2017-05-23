.class public Lcom/lenovo/design/internal/NavigationMenu;
.super Lcom/lenovo/internal/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/design/internal/NavigationMenu;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 40
    .local v0, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/lenovo/design/internal/NavigationSubMenu;

    invoke-virtual {p0}, Lcom/lenovo/design/internal/NavigationMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/lenovo/design/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lcom/lenovo/design/internal/NavigationMenu;Lcom/lenovo/internal/view/menu/MenuItemImpl;)V

    .line 41
    .local v1, "subMenu":Lcom/lenovo/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V

    .line 42
    return-object v1
.end method
