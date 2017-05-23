.class Llenovo/design/widget/TabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


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

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Llenovo/design/widget/TabLayout$SlidingTabStrip;IIII)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    iput p2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 5
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 1499
    invoke-virtual {p1}, Llenovo/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v0

    .line 1500
    .local v0, "fraction":F
    iget-object v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    iget v2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    iget v3, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    invoke-static {v2, v3, v0}, Llenovo/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget v3, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-static {v3, v4, v0}, Llenovo/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v3

    # invokes: Llenovo/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V
    invoke-static {v1, v2, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->access$1600(Llenovo/design/widget/TabLayout$SlidingTabStrip;II)V

    .line 1503
    return-void
.end method
