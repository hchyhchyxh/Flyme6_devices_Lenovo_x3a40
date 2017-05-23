.class public Llenovo/design/widget/SwipeDismissBehavior;
.super Llenovo/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;,
        Llenovo/design/widget/SwipeDismissBehavior$SwipeDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Llenovo/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field private mAlphaEndSwipeDistance:F

.field private mAlphaStartSwipeDistance:F

.field private final mDragCallback:Llenovo/design/widget/ViewDragHelper$Callback;

.field private mDragDismissThreshold:F

.field private mIgnoreEvents:Z

.field private mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field private mSwipeDirection:I

.field private mViewDragHelper:Llenovo/design/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 80
    iput v1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 84
    iput v2, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 85
    iput v1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 86
    iput v2, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 198
    new-instance v0, Llenovo/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Llenovo/design/widget/SwipeDismissBehavior$1;-><init>(Llenovo/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragCallback:Llenovo/design/widget/ViewDragHelper$Callback;

    .line 330
    return-void
.end method

.method static synthetic access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$200(Llenovo/design/widget/SwipeDismissBehavior;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    return v0
.end method

.method static synthetic access$300(Llenovo/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    return v0
.end method

.method static synthetic access$400(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Llenovo/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Llenovo/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    return v0
.end method

.method static synthetic access$600(Llenovo/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/SwipeDismissBehavior;

    .prologue
    .line 31
    iget v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    return v0
.end method

.method static synthetic access$700(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Llenovo/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 352
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    .line 356
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    if-nez v0, :cond_0

    .line 324
    iget-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSensitivity:F

    iget-object v1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragCallback:Llenovo/design/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0, v1}, Llenovo/design/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLlenovo/design/widget/ViewDragHelper$Callback;)Llenovo/design/widget/ViewDragHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    .line 328
    :cond_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragCallback:Llenovo/design/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Llenovo/design/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Llenovo/design/widget/ViewDragHelper$Callback;)Llenovo/design/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_0
.end method

.method static fraction(FFF)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .prologue
    .line 373
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getDragState()I
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    invoke-virtual {v0}, Llenovo/design/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
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
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Llenovo/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    .line 181
    :cond_0
    iget-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_2

    .line 186
    :goto_1
    return v1

    .line 170
    :pswitch_1
    iget-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 176
    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0, p1}, Llenovo/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 186
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Llenovo/design/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
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
    .line 191
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Llenovo/design/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragDismissDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 131
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Llenovo/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 132
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 149
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Llenovo/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 150
    return-void
.end method

.method public setListener(Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    .prologue
    .line 112
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 113
    return-void
.end method

.method public setSensitivity(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 160
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    .line 162
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 140
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Llenovo/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Llenovo/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 141
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 122
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Llenovo/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 123
    return-void
.end method
