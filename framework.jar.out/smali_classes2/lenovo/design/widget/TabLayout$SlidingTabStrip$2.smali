.class Llenovo/design/widget/TabLayout$SlidingTabStrip$2;
.super Llenovo/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Llenovo/design/widget/TabLayout$SlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    iput p2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Llenovo/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 1514
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    iget v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    # setter for: Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->access$1702(Llenovo/design/widget/TabLayout$SlidingTabStrip;I)I

    .line 1515
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->access$1802(Llenovo/design/widget/TabLayout$SlidingTabStrip;F)F

    .line 1516
    return-void
.end method

.method public onAnimationEnd(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 1508
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    iget v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    # setter for: Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->access$1702(Llenovo/design/widget/TabLayout$SlidingTabStrip;I)I

    .line 1509
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->access$1802(Llenovo/design/widget/TabLayout$SlidingTabStrip;F)F

    .line 1510
    return-void
.end method
