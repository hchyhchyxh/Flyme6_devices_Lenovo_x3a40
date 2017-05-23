.class public Llenovo/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnLayoutChangeListener:Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 611
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 614
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 615
    sget-object v1, Lcom/lenovo/internal/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 616
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    .line 617
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    .line 619
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setElevation(F)V

    .line 623
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 625
    invoke-virtual {p0, v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 630
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x9040010

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 631
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "messagePadTop"    # I
    .param p3, "messagePadBottom"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "changed":Z
    invoke-virtual {p0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    .line 723
    const/4 v0, 0x1

    .line 725
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    if-eq v1, p3, :cond_2

    .line 727
    :cond_1
    iget-object v1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v1, p2, p3}, Llenovo/design/widget/Snackbar$SnackbarLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    .line 728
    const/4 v0, 0x1

    .line 730
    :cond_2
    return v0
.end method


# virtual methods
.method animateChildrenIn(II)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 684
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 687
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 689
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 692
    :cond_0
    return-void
.end method

.method animateChildrenOut(II)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 695
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 696
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 699
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 701
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 704
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 636
    const v0, 0x90b0036

    invoke-virtual {p0, v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 637
    const v0, 0x90b0037

    invoke-virtual {p0, v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 638
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 708
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 709
    if-eqz p1, :cond_0

    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 712
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 650
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 652
    iget v7, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-lez v7, :cond_0

    invoke-virtual {p0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-le v7, v8, :cond_0

    .line 653
    iget v7, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 654
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 659
    .local v2, "multiLineVPadding":I
    invoke-virtual {p0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080052

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 661
    .local v4, "singleLineVPadding":I
    iget-object v7, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-le v7, v5, :cond_3

    move v0, v5

    .line 663
    .local v0, "isMultiLine":Z
    :goto_0
    const/4 v3, 0x0

    .line 664
    .local v3, "remeasure":Z
    if-eqz v0, :cond_4

    iget v7, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-lez v7, :cond_4

    iget-object v7, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-le v7, v8, :cond_4

    .line 666
    sub-int v6, v2, v4

    invoke-direct {p0, v5, v2, v6}, Llenovo/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    const/4 v3, 0x1

    .line 677
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 678
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 680
    :cond_2
    return-void

    .end local v0    # "isMultiLine":Z
    .end local v3    # "remeasure":Z
    :cond_3
    move v0, v6

    .line 661
    goto :goto_0

    .line 671
    .restart local v0    # "isMultiLine":Z
    .restart local v3    # "remeasure":Z
    :cond_4
    if-eqz v0, :cond_5

    move v1, v2

    .line 672
    .local v1, "messagePadding":I
    :goto_2
    invoke-direct {p0, v6, v1, v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 673
    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "messagePadding":I
    :cond_5
    move v1, v4

    .line 671
    goto :goto_2
.end method

.method setOnLayoutChangeListener(Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "onLayoutChangeListener"    # Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    .prologue
    .line 715
    iput-object p1, p0, Llenovo/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    .line 716
    return-void
.end method
