.class Llenovo/design/widget/ViewOffsetBehavior;
.super Llenovo/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Llenovo/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 30
    iput v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Llenovo/design/widget/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Llenovo/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
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
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, p2, p3}, Llenovo/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Llenovo/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p2}, Llenovo/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    .line 47
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Llenovo/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 49
    iget v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    iget v1, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {v0, v1}, Llenovo/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 51
    iput v2, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 53
    :cond_1
    iget v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    iget v1, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    invoke-virtual {v0, v1}, Llenovo/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 55
    iput v2, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 71
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    iput p1, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 62
    .local p0, "this":Llenovo/design/widget/ViewOffsetBehavior;, "Llenovo/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Llenovo/design/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 65
    :cond_0
    iput p1, p0, Llenovo/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method
