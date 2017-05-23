.class Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    # getter for: Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->access$000(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->access$002(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    # getter for: Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->access$000(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    iget-object v1, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    # getter for: Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->access$000(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    # getter for: Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->access$100(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    invoke-virtual {v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->postInvalidateOnAnimation()V

    .line 76
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
