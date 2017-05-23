.class Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Llenovo/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/design/widget/CollapsingToolbarLayout;Llenovo/design/widget/CollapsingToolbarLayout$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;
    .param p2, "x1"    # Llenovo/design/widget/CollapsingToolbarLayout$1;

    .prologue
    .line 851
    invoke-direct {p0, p1}, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Llenovo/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Llenovo/design/widget/AppBarLayout;I)V
    .locals 11
    .param p1, "layout"    # Llenovo/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    .line 854
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # setter for: Llenovo/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I
    invoke-static {v8, p2}, Llenovo/design/widget/CollapsingToolbarLayout;->access$302(Llenovo/design/widget/CollapsingToolbarLayout;I)I

    .line 856
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$000(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/view/WindowInsets;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$000(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/view/WindowInsets;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 857
    .local v3, "insetTop":I
    :goto_0
    invoke-virtual {p1}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v6

    .line 859
    .local v6, "scrollRange":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v7

    .local v7, "z":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 860
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v2}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 861
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 862
    .local v4, "lp":Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    # invokes: Llenovo/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;
    invoke-static {v0}, Llenovo/design/widget/CollapsingToolbarLayout;->access$400(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 864
    .local v5, "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    iget v8, v4, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_0

    .line 859
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 856
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    .end local v6    # "scrollRange":I
    .end local v7    # "z":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 866
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    .restart local v6    # "scrollRange":I
    .restart local v7    # "z":I
    :pswitch_0
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v8, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 867
    neg-int v8, p2

    invoke-virtual {v5, v8}, Llenovo/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 871
    :pswitch_1
    neg-int v8, p2

    int-to-float v8, v8

    iget v9, v4, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v5, v8}, Llenovo/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 878
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    :cond_2
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$500(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_3

    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$600(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 879
    :cond_3
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, p2

    iget-object v9, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Llenovo/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v9

    add-int/2addr v9, v3

    if-ge v8, v9, :cond_6

    .line 880
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # invokes: Llenovo/design/widget/CollapsingToolbarLayout;->showScrim()V
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$700(Llenovo/design/widget/CollapsingToolbarLayout;)V

    .line 886
    :cond_4
    :goto_3
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$600(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_5

    if-lez v3, :cond_5

    .line 887
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    .line 891
    :cond_5
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    iget-object v9, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Llenovo/design/widget/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v1, v8, v3

    .line 892
    .local v1, "expandRange":I
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # getter for: Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$900(Llenovo/design/widget/CollapsingToolbarLayout;)Llenovo/design/widget/CollapsingTextHelper;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Llenovo/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 895
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v6, :cond_7

    .line 898
    invoke-virtual {p1}, Llenovo/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v8

    invoke-virtual {p1, v8}, Llenovo/design/widget/AppBarLayout;->setElevation(F)V

    .line 903
    :goto_4
    return-void

    .line 882
    .end local v1    # "expandRange":I
    :cond_6
    iget-object v8, p0, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    # invokes: Llenovo/design/widget/CollapsingToolbarLayout;->hideScrim()V
    invoke-static {v8}, Llenovo/design/widget/CollapsingToolbarLayout;->access$800(Llenovo/design/widget/CollapsingToolbarLayout;)V

    goto :goto_3

    .line 901
    .restart local v1    # "expandRange":I
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Llenovo/design/widget/AppBarLayout;->setElevation(F)V

    goto :goto_4

    .line 864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
