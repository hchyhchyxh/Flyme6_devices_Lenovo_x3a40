.class Llenovo/design/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Llenovo/design/widget/ShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Llenovo/design/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Llenovo/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # invokes: Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p1}, Llenovo/design/widget/FloatingActionButton;->access$201(Llenovo/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 110
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # getter for: Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;
    invoke-static {v0}, Llenovo/design/widget/FloatingActionButton;->access$000(Llenovo/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    iget-object v1, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # getter for: Llenovo/design/widget/FloatingActionButton;->mContentPadding:I
    invoke-static {v1}, Llenovo/design/widget/FloatingActionButton;->access$100(Llenovo/design/widget/FloatingActionButton;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # getter for: Llenovo/design/widget/FloatingActionButton;->mContentPadding:I
    invoke-static {v2}, Llenovo/design/widget/FloatingActionButton;->access$100(Llenovo/design/widget/FloatingActionButton;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # getter for: Llenovo/design/widget/FloatingActionButton;->mContentPadding:I
    invoke-static {v3}, Llenovo/design/widget/FloatingActionButton;->access$100(Llenovo/design/widget/FloatingActionButton;)I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Llenovo/design/widget/FloatingActionButton$1;->this$0:Llenovo/design/widget/FloatingActionButton;

    # getter for: Llenovo/design/widget/FloatingActionButton;->mContentPadding:I
    invoke-static {v4}, Llenovo/design/widget/FloatingActionButton;->access$100(Llenovo/design/widget/FloatingActionButton;)I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Llenovo/design/widget/FloatingActionButton;->setPadding(IIII)V

    .line 114
    return-void
.end method