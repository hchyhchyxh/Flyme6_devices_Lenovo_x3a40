.class Llenovo/design/widget/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout$1;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 210
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$1;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # setter for: Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;
    invoke-static {v0, p2}, Llenovo/design/widget/CollapsingToolbarLayout;->access$002(Llenovo/design/widget/CollapsingToolbarLayout;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 211
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$1;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Llenovo/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 212
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
