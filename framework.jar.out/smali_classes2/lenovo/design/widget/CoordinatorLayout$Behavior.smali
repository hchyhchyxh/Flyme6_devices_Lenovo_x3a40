.class public abstract Llenovo/design/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1614
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1625
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    return-void
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1885
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1886
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1873
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1874
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 1875
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1719
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getScrimColor(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)I
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .prologue
    .line 1686
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/high16 v0, -0x1000000

    return v0
.end method

.method public final getScrimOpacity(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)F
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .prologue
    .line 1703
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1745
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/WindowInsets;",
            ")",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .prologue
    .line 2107
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-object p3
.end method

.method public onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1774
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1792
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1648
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 1860
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .prologue
    .line 1832
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .prologue
    .line 2060
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 2088
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .line 2029
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 1996
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1939
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2124
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 2145
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 1913
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "coordinatorLayout"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1963
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llenovo/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1667
    .local p0, "this":Llenovo/design/widget/CoordinatorLayout$Behavior;, "Llenovo/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method