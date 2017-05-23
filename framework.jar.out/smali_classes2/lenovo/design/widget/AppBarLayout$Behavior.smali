.class public Llenovo/design/widget/AppBarLayout$Behavior;
.super Llenovo/design/widget/ViewOffsetBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/AppBarLayout$Behavior$SavedState;,
        Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llenovo/design/widget/ViewOffsetBehavior",
        "<",
        "Llenovo/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSkipNestedPreScroll:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 651
    invoke-direct {p0}, Llenovo/design/widget/ViewOffsetBehavior;-><init>()V

    .line 640
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 645
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    .line 647
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 654
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 640
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 645
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    .line 647
    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    .line 655
    return-void
.end method

.method static synthetic access$100(Llenovo/design/widget/AppBarLayout$Behavior;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/AppBarLayout$Behavior;

    .prologue
    .line 628
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private animateOffsetTo(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)V
    .locals 2
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "offset"    # I

    .prologue
    .line 873
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-nez v0, :cond_0

    .line 874
    invoke-static {}, Llenovo/design/widget/ViewUtils;->createAnimator()Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    .line 875
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    sget-object v1, Llenovo/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 876
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    new-instance v1, Llenovo/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v1, p0, p1, p2}, Llenovo/design/widget/AppBarLayout$Behavior$1;-><init>(Llenovo/design/widget/AppBarLayout$Behavior;Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)V

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 887
    :goto_0
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Llenovo/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 888
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->start()V

    .line 889
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_0
.end method

.method private canDragAppBarLayout()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v2, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 987
    iget-object v2, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 988
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 990
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private dispatchOffsetUpdates(Llenovo/design/widget/AppBarLayout;)V
    .locals 5
    .param p1, "layout"    # Llenovo/design/widget/AppBarLayout;

    .prologue
    .line 1038
    # getter for: Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;
    invoke-static {p1}, Llenovo/design/widget/AppBarLayout;->access$200(Llenovo/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v2

    .line 1042
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "z":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1043
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 1044
    .local v1, "listener":Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;
    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    invoke-interface {v1, p1, v4}, Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Llenovo/design/widget/AppBarLayout;I)V

    .line 1042
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    .end local v1    # "listener":Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;
    :cond_1
    return-void
.end method

.method private fling(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;IIF)Z
    .locals 9
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Llenovo/design/widget/AppBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 897
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 898
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;

    .line 901
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 907
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    new-instance v0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;-><init>(Llenovo/design/widget/AppBarLayout$Behavior;Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)V

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 909
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Llenovo/design/widget/AppBarLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 910
    const/4 v1, 0x1

    .line 913
    :goto_0
    return v1

    .line 912
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mFlingRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private interpolateOffset(Llenovo/design/widget/AppBarLayout;I)I
    .locals 13
    .param p1, "layout"    # Llenovo/design/widget/AppBarLayout;
    .param p2, "offset"    # I

    .prologue
    .line 1051
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1053
    .local v0, "absOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p1}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v9

    .local v9, "z":I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 1054
    invoke-virtual {p1, v5}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1055
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/AppBarLayout$LayoutParams;

    .line 1056
    .local v2, "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Llenovo/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 1058
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v0, v10, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v0, v10, :cond_2

    .line 1059
    if-eqz v7, :cond_1

    .line 1060
    const/4 v3, 0x0

    .line 1061
    .local v3, "childScrollableHeight":I
    invoke-virtual {v2}, Llenovo/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 1062
    .local v4, "flags":I
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_0

    .line 1064
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v2, Llenovo/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Llenovo/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 1067
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_0

    .line 1070
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v10

    sub-int/2addr v3, v10

    .line 1074
    :cond_0
    if-lez v3, :cond_1

    .line 1075
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v0, v10

    .line 1076
    .local v8, "offsetForView":I
    int-to-float v10, v3

    int-to-float v11, v8

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-interface {v7, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1080
    .local v6, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v6

    mul-int p2, v10, v11

    .line 1090
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "childScrollableHeight":I
    .end local v4    # "flags":I
    .end local v6    # "interpolatedDiff":I
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "offsetForView":I
    .end local p2    # "offset":I
    :cond_1
    return p2

    .line 1053
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    .restart local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local p2    # "offset":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private scroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I
    .locals 6
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I

    .prologue
    .line 981
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Llenovo/design/widget/ViewOffsetBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Llenovo/design/widget/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method final getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 1094
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 724
    iget v7, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    if-gez v7, :cond_0

    .line 725
    invoke-virtual {p1}, Llenovo/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    .line 728
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 731
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    iget-boolean v7, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    if-eqz v7, :cond_1

    .line 774
    :goto_0
    return v6

    .line 735
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 774
    :cond_2
    :goto_1
    iget-boolean v6, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    goto :goto_0

    .line 737
    :pswitch_0
    iget v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    .line 738
    .local v1, "activePointerId":I
    if-eq v1, v8, :cond_2

    .line 742
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 743
    .local v2, "pointerIndex":I
    if-eq v2, v8, :cond_2

    .line 747
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v4, v7

    .line 748
    .local v4, "y":I
    iget v7, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 749
    .local v5, "yDiff":I
    iget v7, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    if-le v5, v7, :cond_2

    .line 750
    iput-boolean v6, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    .line 751
    iput v4, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    goto :goto_1

    .line 757
    .end local v1    # "activePointerId":I
    .end local v2    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :pswitch_1
    iput-boolean v9, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    .line 758
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 759
    .local v3, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 760
    .restart local v4    # "y":I
    invoke-virtual {p1, p2, v3, v4}, Llenovo/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->canDragAppBarLayout()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 761
    iput v4, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    .line 762
    invoke-virtual {p3, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    goto :goto_1

    .line 769
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_2
    iput-boolean v9, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    .line 770
    iput v8, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    goto :goto_1

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)Z
    .locals 7
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "layoutDirection"    # I

    .prologue
    const/4 v5, 0x0

    .line 940
    invoke-super {p0, p1, p2, p3}, Llenovo/design/widget/ViewOffsetBehavior;->onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 942
    .local v2, "handled":Z
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getPendingAction()I

    move-result v4

    .line 943
    .local v4, "pendingAction":I
    if-eqz v4, :cond_6

    .line 944
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 945
    .local v0, "animate":Z
    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_4

    .line 946
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v5

    neg-int v3, v5

    .line 947
    .local v3, "offset":I
    if-eqz v0, :cond_3

    .line 948
    invoke-direct {p0, p1, p2, v3}, Llenovo/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)V

    .line 960
    .end local v3    # "offset":I
    :cond_0
    :goto_1
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->resetPendingAction()V

    .line 974
    .end local v0    # "animate":Z
    :cond_1
    :goto_2
    invoke-direct {p0, p2}, Llenovo/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Llenovo/design/widget/AppBarLayout;)V

    .line 976
    return v2

    :cond_2
    move v0, v5

    .line 944
    goto :goto_0

    .line 950
    .restart local v0    # "animate":Z
    .restart local v3    # "offset":I
    :cond_3
    invoke-virtual {p0, p1, p2, v3}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)I

    goto :goto_1

    .line 952
    .end local v3    # "offset":I
    :cond_4
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 953
    if-eqz v0, :cond_5

    .line 954
    invoke-direct {p0, p1, p2, v5}, Llenovo/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)V

    goto :goto_1

    .line 956
    :cond_5
    invoke-virtual {p0, p1, p2, v5}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)I

    goto :goto_1

    .line 961
    .end local v0    # "animate":Z
    :cond_6
    iget v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v5, :cond_1

    .line 962
    iget v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v5}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 963
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v3, v5

    .line 964
    .restart local v3    # "offset":I
    iget-boolean v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v5, :cond_7

    .line 965
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 969
    :goto_3
    invoke-virtual {p0, v3}, Llenovo/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 970
    const/4 v5, -0x1

    iput v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_2

    .line 967
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3
.end method

.method public bridge synthetic onNestedFling(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # Z

    .prologue
    .line 628
    move-object v2, p2

    check-cast v2, Llenovo/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Llenovo/design/widget/AppBarLayout$Behavior;->onNestedFling(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 7
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    const/4 v4, 0x0

    .line 834
    if-nez p6, :cond_1

    .line 836
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->fling(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;IIF)Z

    move-result v4

    .line 868
    :cond_0
    :goto_0
    return v4

    .line 841
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    .line 843
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int v6, v0, v1

    .line 846
    .local v6, "targetScroll":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-gt v0, v6, :cond_0

    .line 862
    :cond_2
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 863
    invoke-direct {p0, p1, p2, v6}, Llenovo/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)V

    .line 864
    const/4 v4, 0x1

    goto :goto_0

    .line 853
    .end local v6    # "targetScroll":I
    :cond_3
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v6, v0

    .line 855
    .restart local v6    # "targetScroll":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, v6, :cond_2

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # [I

    .prologue
    .line 628
    move-object v2, p2

    check-cast v2, Llenovo/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Llenovo/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 680
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 682
    if-gez p5, :cond_1

    .line 684
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 685
    .local v4, "min":I
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 691
    .local v5, "max":I
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->scroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I

    move-result v0

    aput v0, p6, v6

    .line 693
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 689
    .restart local v4    # "min":I
    const/4 v5, 0x0

    .restart local v5    # "max":I
    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 628
    move-object v2, p2

    check-cast v2, Llenovo/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Llenovo/design/widget/AppBarLayout$Behavior;->onNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 699
    if-gez p7, :cond_0

    .line 702
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-direct/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->scroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iput-boolean v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/os/Parcelable;

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1124
    instance-of v1, p3, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1125
    check-cast v0, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1126
    .local v0, "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    invoke-virtual {v0}, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Llenovo/design/widget/ViewOffsetBehavior;->onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1127
    iget v1, v0, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1128
    iget v1, v0, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    iput v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1129
    iget-boolean v1, v0, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    iput-boolean v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1134
    .end local v0    # "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-super {p0, p1, p2, p3}, Llenovo/design/widget/ViewOffsetBehavior;->onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1132
    const/4 v1, -0x1

    iput v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2}, Llenovo/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;

    .prologue
    .line 1099
    invoke-super {p0, p1, p2}, Llenovo/design/widget/ViewOffsetBehavior;->onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1100
    .local v5, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v3

    .line 1103
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1104
    invoke-virtual {p2, v2}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v6, v7, v3

    .line 1107
    .local v6, "visBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    .line 1108
    new-instance v4, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v4, v5}, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1109
    .local v4, "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    iput v2, v4, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1110
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v4, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    .line 1112
    int-to-float v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v4, Llenovo/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    .line 1118
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    .end local v6    # "visBottom":I
    :goto_2
    return-object v4

    .line 1110
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    .restart local v6    # "visBottom":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1103
    .end local v4    # "ss":Llenovo/design/widget/AppBarLayout$Behavior$SavedState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "visBottom":I
    :cond_2
    move-object v4, v5

    .line 1118
    goto :goto_2
.end method

.method public bridge synthetic onStartNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Landroid/view/View;
    .param p5, "x4"    # I

    .prologue
    .line 628
    move-object v2, p2

    check-cast v2, Llenovo/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 662
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Llenovo/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 666
    .local v0, "started":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Llenovo/design/widget/ValueAnimatorCompat;->cancel()V

    .line 672
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 674
    return v0

    .line 662
    .end local v0    # "started":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 718
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 719
    return-void
.end method

.method public bridge synthetic onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 628
    check-cast p2, Llenovo/design/widget/AppBarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 779
    iget v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 780
    invoke-virtual {p1}, Llenovo/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    .line 783
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v7, v0

    .line 784
    .local v7, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    .line 786
    .local v8, "y":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v5, v9

    .line 827
    :cond_2
    return v5

    .line 788
    :pswitch_0
    invoke-virtual {p1, p2, v7, v8}, Llenovo/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->canDragAppBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    iput v8, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    .line 790
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    goto :goto_0

    .line 796
    :pswitch_1
    iget v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 798
    .local v6, "activePointerIndex":I
    if-eq v6, v1, :cond_2

    .line 802
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v8, v0

    .line 804
    iget v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    sub-int v3, v0, v8

    .line 805
    .local v3, "dy":I
    iget-boolean v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    if-le v0, v1, :cond_3

    .line 806
    iput-boolean v9, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    .line 807
    if-lez v3, :cond_4

    .line 808
    iget v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    sub-int/2addr v3, v0

    .line 814
    :cond_3
    :goto_1
    iget-boolean v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 815
    iput v8, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mLastMotionY:I

    .line 817
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->scroll(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I

    goto :goto_0

    .line 810
    :cond_4
    iget v0, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mTouchSlop:I

    add-int/2addr v3, v0

    goto :goto_1

    .line 822
    .end local v3    # "dy":I
    .end local v6    # "activePointerIndex":I
    :pswitch_2
    iput-boolean v5, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mIsBeingDragged:Z

    .line 823
    iput v1, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mActivePointerId:I

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)I
    .locals 6
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "newOffset"    # I

    .prologue
    .line 995
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method final setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;III)I
    .locals 5
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I

    .prologue
    .line 1001
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 1002
    .local v1, "curOffset":I
    const/4 v0, 0x0

    .line 1004
    .local v0, "consumed":I
    if-eqz p4, :cond_1

    if-lt v1, p4, :cond_1

    if-gt v1, p5, :cond_1

    .line 1007
    invoke-static {p3, p4, p5}, Llenovo/design/widget/MathUtils;->constrain(III)I

    move-result p3

    .line 1009
    if-eq v1, p3, :cond_1

    .line 1010
    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p2, p3}, Llenovo/design/widget/AppBarLayout$Behavior;->interpolateOffset(Llenovo/design/widget/AppBarLayout;I)I

    move-result v2

    .line 1014
    .local v2, "interpolatedOffset":I
    :goto_0
    invoke-virtual {p0, v2}, Llenovo/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v3

    .line 1017
    .local v3, "offsetChanged":Z
    sub-int v0, v1, p3

    .line 1019
    sub-int v4, p3, v2

    iput v4, p0, Llenovo/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1021
    if-nez v3, :cond_0

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1026
    invoke-virtual {p1, p2}, Llenovo/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1030
    :cond_0
    invoke-direct {p0, p2}, Llenovo/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Llenovo/design/widget/AppBarLayout;)V

    .line 1034
    .end local v2    # "interpolatedOffset":I
    .end local v3    # "offsetChanged":Z
    :cond_1
    return v0

    :cond_2
    move v2, p3

    .line 1010
    goto :goto_0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 628
    invoke-super {p0, p1}, Llenovo/design/widget/ViewOffsetBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 628
    invoke-super {p0, p1}, Llenovo/design/widget/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
