.class final Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplyInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2510
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;->this$0:Llenovo/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2513
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;->this$0:Llenovo/design/widget/CoordinatorLayout;

    # invokes: Llenovo/design/widget/CoordinatorLayout;->setWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v0, p2}, Llenovo/design/widget/CoordinatorLayout;->access$000(Llenovo/design/widget/CoordinatorLayout;Landroid/view/WindowInsets;)V

    .line 2514
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
