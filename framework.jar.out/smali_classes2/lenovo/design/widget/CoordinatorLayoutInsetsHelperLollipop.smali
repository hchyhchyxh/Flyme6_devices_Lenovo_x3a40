.class Llenovo/design/widget/CoordinatorLayoutInsetsHelperLollipop;
.super Ljava/lang/Object;
.source "CoordinatorLayoutInsetsHelperLollipop.java"

# interfaces
.implements Llenovo/design/widget/CoordinatorLayoutInsetsHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupForWindowInsets(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insetsListener"    # Landroid/view/View$OnApplyWindowInsetsListener;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 29
    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    :cond_0
    return-void
.end method
