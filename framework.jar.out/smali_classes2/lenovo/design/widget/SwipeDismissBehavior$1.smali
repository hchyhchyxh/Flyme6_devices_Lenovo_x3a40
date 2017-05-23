.class Llenovo/design/widget/SwipeDismissBehavior$1;
.super Llenovo/design/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Llenovo/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Llenovo/design/widget/SwipeDismissBehavior;)V
    .locals 0

    .prologue
    .line 198
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    iput-object p1, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Llenovo/design/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F

    .prologue
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_6

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 242
    .local v1, "isRtl":Z
    :goto_0
    iget-object v5, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I
    invoke-static {v5}, Llenovo/design/widget/SwipeDismissBehavior;->access$200(Llenovo/design/widget/SwipeDismissBehavior;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 260
    .end local v1    # "isRtl":Z
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v4

    .line 239
    goto :goto_0

    .line 245
    .restart local v1    # "isRtl":Z
    :cond_2
    iget-object v5, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I
    invoke-static {v5}, Llenovo/design/widget/SwipeDismissBehavior;->access$200(Llenovo/design/widget/SwipeDismissBehavior;)I

    move-result v5

    if-nez v5, :cond_4

    .line 248
    if-eqz v1, :cond_3

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_3
    cmpl-float v5, p2, v7

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_1

    .line 249
    :cond_4
    iget-object v5, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I
    invoke-static {v5}, Llenovo/design/widget/SwipeDismissBehavior;->access$200(Llenovo/design/widget/SwipeDismissBehavior;)I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 252
    if-eqz v1, :cond_5

    cmpl-float v5, p2, v7

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_5
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_1

    .line 255
    .end local v1    # "isRtl":Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int v0, v5, v6

    .line 256
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F
    invoke-static {v6}, Llenovo/design/widget/SwipeDismissBehavior;->access$300(Llenovo/design/widget/SwipeDismissBehavior;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 257
    .local v2, "thresholdDistance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_0

    move v3, v4

    goto :goto_1

    .end local v0    # "distance":I
    .end local v2    # "thresholdDistance":I
    .restart local v1    # "isRtl":Z
    :cond_7
    move v3, v4

    .line 260
    goto :goto_1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    const/4 v3, 0x1

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v0, v3

    .line 274
    .local v0, "isRtl":Z
    :goto_0
    iget-object v4, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I
    invoke-static {v4}, Llenovo/design/widget/SwipeDismissBehavior;->access$200(Llenovo/design/widget/SwipeDismissBehavior;)I

    move-result v4

    if-nez v4, :cond_2

    .line 275
    if-eqz v0, :cond_1

    .line 276
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 277
    .local v2, "min":I
    iget v1, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 295
    .local v1, "max":I
    :goto_1
    # invokes: Llenovo/design/widget/SwipeDismissBehavior;->clamp(III)I
    invoke-static {v2, p2, v1}, Llenovo/design/widget/SwipeDismissBehavior;->access$400(III)I

    move-result v3

    return v3

    .line 270
    .end local v0    # "isRtl":Z
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    .restart local v0    # "isRtl":Z
    :cond_1
    iget v2, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 280
    .restart local v2    # "min":I
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1

    .line 282
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_2
    iget-object v4, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I
    invoke-static {v4}, Llenovo/design/widget/SwipeDismissBehavior;->access$200(Llenovo/design/widget/SwipeDismissBehavior;)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 283
    if-eqz v0, :cond_3

    .line 284
    iget v2, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 285
    .restart local v2    # "min":I
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1

    .line 287
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_3
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 288
    .restart local v2    # "min":I
    iget v1, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .restart local v1    # "max":I
    goto :goto_1

    .line 291
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_4
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 292
    .restart local v2    # "min":I
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .restart local v1    # "max":I
    goto :goto_1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 300
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 265
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 209
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 305
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F
    invoke-static {v5}, Llenovo/design/widget/SwipeDismissBehavior;->access$500(Llenovo/design/widget/SwipeDismissBehavior;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 307
    .local v2, "startAlphaDistance":F
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F
    invoke-static {v5}, Llenovo/design/widget/SwipeDismissBehavior;->access$600(Llenovo/design/widget/SwipeDismissBehavior;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 310
    .local v1, "endAlphaDistance":F
    int-to-float v3, p2

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_0

    .line 311
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_0
    int-to-float v3, p2

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_1

    .line 313
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 316
    :cond_1
    int-to-float v3, p2

    invoke-static {v2, v1, v3}, Llenovo/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result v0

    .line 317
    .local v0, "distance":F
    sub-float v3, v6, v0

    # invokes: Llenovo/design/widget/SwipeDismissBehavior;->clamp(FFF)F
    invoke-static {v7, v3, v6}, Llenovo/design/widget/SwipeDismissBehavior;->access$700(FFF)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 216
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 218
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .line 220
    .local v1, "dismiss":Z
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge v3, v4, :cond_1

    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int v2, v3, v0

    .line 224
    .local v2, "targetLeft":I
    :goto_0
    const/4 v1, 0x1

    .line 230
    :goto_1
    iget-object v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;
    invoke-static {v3}, Llenovo/design/widget/SwipeDismissBehavior;->access$100(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Llenovo/design/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    new-instance v3, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object v4, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    invoke-direct {v3, v4, p1, v1}, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Llenovo/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    :goto_2
    return-void

    .line 221
    .end local v2    # "targetLeft":I
    :cond_1
    iget v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    add-int v2, v3, v0

    goto :goto_0

    .line 227
    :cond_2
    iget v2, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .restart local v2    # "targetLeft":I
    goto :goto_1

    .line 232
    :cond_3
    if-eqz v1, :cond_0

    iget-object v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v3}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v3}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v3

    invoke-interface {v3, p1}, Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 203
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$1;, "Llenovo/design/widget/SwipeDismissBehavior.1;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Llenovo/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 204
    const/4 v0, 0x1

    return v0
.end method
