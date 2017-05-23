.class Llenovo/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    .line 42
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 69
    .local v0, "x":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 71
    return-void
.end method

.method private updateOffsets()V
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v2, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetTop:I

    iget-object v3, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Llenovo/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 55
    iget-object v1, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v2, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    iget-object v3, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Llenovo/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Llenovo/design/widget/ViewOffsetHelper;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 61
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/view/View;

    .end local v0    # "vp":Landroid/view/ViewParent;
    invoke-static {v0}, Llenovo/design/widget/ViewOffsetHelper;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 47
    iget-object v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    .line 50
    invoke-direct {p0}, Llenovo/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 51
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 95
    iget v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    if-eq v0, p1, :cond_0

    .line 96
    iput p1, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    .line 97
    invoke-direct {p0}, Llenovo/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 80
    iget v0, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetTop:I

    if-eq v0, p1, :cond_0

    .line 81
    iput p1, p0, Llenovo/design/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 82
    invoke-direct {p0}, Llenovo/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
