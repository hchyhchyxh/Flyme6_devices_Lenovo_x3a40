.class Llenovo/design/widget/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/NavigationView;


# direct methods
.method constructor <init>(Llenovo/design/widget/NavigationView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Llenovo/design/widget/NavigationView$1;->this$0:Llenovo/design/widget/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    iget-object v0, p0, Llenovo/design/widget/NavigationView$1;->this$0:Llenovo/design/widget/NavigationView;

    # getter for: Llenovo/design/widget/NavigationView;->mListener:Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Llenovo/design/widget/NavigationView;->access$000(Llenovo/design/widget/NavigationView;)Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/NavigationView$1;->this$0:Llenovo/design/widget/NavigationView;

    # getter for: Llenovo/design/widget/NavigationView;->mListener:Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Llenovo/design/widget/NavigationView;->access$000(Llenovo/design/widget/NavigationView;)Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Llenovo/design/widget/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 149
    return-void
.end method
