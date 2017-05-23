.class public final Llenovo/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/Snackbar$Behavior;,
        Llenovo/design/widget/Snackbar$SnackbarLayout;,
        Llenovo/design/widget/Snackbar$Duration;,
        Llenovo/design/widget/Snackbar$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SHOW:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mCallback:Llenovo/design/widget/Snackbar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mView:Llenovo/design/widget/Snackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Llenovo/design/widget/Snackbar$1;

    invoke-direct {v2}, Llenovo/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Llenovo/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v1, Llenovo/design/widget/Snackbar$3;

    invoke-direct {v1, p0}, Llenovo/design/widget/Snackbar$3;-><init>(Llenovo/design/widget/Snackbar;)V

    iput-object v1, p0, Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

    .line 180
    iput-object p1, p0, Llenovo/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Llenovo/design/widget/Snackbar;->mContext:Landroid/content/Context;

    .line 183
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x904000f

    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Llenovo/design/widget/Snackbar$SnackbarLayout;

    iput-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    .line 185
    return-void
.end method

.method static synthetic access$000(Llenovo/design/widget/Snackbar;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Llenovo/design/widget/Snackbar;->dispatchDismiss(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Llenovo/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;

    .prologue
    .line 68
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/design/widget/Snackbar;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;

    .prologue
    .line 68
    invoke-direct {p0}, Llenovo/design/widget/Snackbar;->animateViewIn()V

    return-void
.end method

.method static synthetic access$400(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$SnackbarLayout;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;

    .prologue
    .line 68
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method static synthetic access$500(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$Callback;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;

    .prologue
    .line 68
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;

    return-object v0
.end method

.method static synthetic access$600(Llenovo/design/widget/Snackbar;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/Snackbar;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Llenovo/design/widget/Snackbar;->onViewHidden(I)V

    return-void
.end method

.method private animateViewIn()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 477
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setTranslationY(F)V

    .line 479
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Llenovo/design/widget/Snackbar$6;

    invoke-direct {v2, p0}, Llenovo/design/widget/Snackbar$6;-><init>(Llenovo/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 518
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x905000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 499
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 500
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 501
    new-instance v1, Llenovo/design/widget/Snackbar$7;

    invoke-direct {v1, p0}, Llenovo/design/widget/Snackbar$7;-><init>(Llenovo/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 516
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateViewOut(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    const-wide/16 v4, 0xfa

    .line 521
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 522
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Llenovo/design/widget/Snackbar$8;

    invoke-direct {v2, p0, p1}, Llenovo/design/widget/Snackbar$8;-><init>(Llenovo/design/widget/Snackbar;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 554
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x905000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 538
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 540
    new-instance v1, Llenovo/design/widget/Snackbar$9;

    invoke-direct {v1, p0, p1}, Llenovo/design/widget/Snackbar$9;-><init>(Llenovo/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 552
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 392
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Llenovo/design/widget/SnackbarManager;->dismiss(Llenovo/design/widget/SnackbarManager$Callback;I)V

    .line 393
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Llenovo/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 240
    check-cast p0, Landroid/view/ViewGroup;

    .line 260
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 241
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 245
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 248
    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    :cond_3
    if-eqz p0, :cond_4

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 255
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 257
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 260
    goto :goto_0

    .line 255
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private isBeingDragged()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v4, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 581
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 582
    check-cast v1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 583
    .local v1, "cllp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 585
    .local v0, "behavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    instance-of v4, v0, Llenovo/design/widget/SwipeDismissBehavior;

    if-eqz v4, :cond_0

    .line 586
    check-cast v0, Llenovo/design/widget/SwipeDismissBehavior;

    .end local v0    # "behavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Llenovo/design/widget/SwipeDismissBehavior;->getDragState()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 590
    .end local v1    # "cllp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    return v3
.end method

.method public static make(Landroid/view/View;II)Llenovo/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Llenovo/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Llenovo/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Llenovo/design/widget/Snackbar;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Llenovo/design/widget/Snackbar;

    invoke-static {p0}, Llenovo/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Llenovo/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 208
    .local v0, "snackbar":Llenovo/design/widget/Snackbar;
    invoke-virtual {v0, p1}, Llenovo/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Llenovo/design/widget/Snackbar;

    .line 209
    invoke-virtual {v0, p2}, Llenovo/design/widget/Snackbar;->setDuration(I)Llenovo/design/widget/Snackbar;

    .line 210
    return-object v0
.end method

.method private onViewHidden(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 566
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;

    invoke-virtual {v0, p0, p1}, Llenovo/design/widget/Snackbar$Callback;->onDismissed(Llenovo/design/widget/Snackbar;I)V

    .line 572
    :cond_0
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->onDismissed(Llenovo/design/widget/SnackbarManager$Callback;)V

    .line 573
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Llenovo/design/widget/Snackbar;->dispatchDismiss(I)V

    .line 389
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Llenovo/design/widget/Snackbar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 557
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Llenovo/design/widget/Snackbar;->isBeingDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Llenovo/design/widget/Snackbar;->onViewHidden(I)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-direct {p0, p1}, Llenovo/design/widget/Snackbar;->animateViewOut(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Llenovo/design/widget/Snackbar$SnackbarLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Llenovo/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Llenovo/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Llenovo/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Llenovo/design/widget/Snackbar;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 284
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 285
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :goto_0
    return-object p0

    .line 288
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v1, Llenovo/design/widget/Snackbar$2;

    invoke-direct {v1, p0, p2}, Llenovo/design/widget/Snackbar$2;-><init>(Llenovo/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Llenovo/design/widget/Snackbar;
    .locals 2
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 320
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Llenovo/design/widget/Snackbar;
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 308
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 309
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    return-object p0
.end method

.method public setCallback(Llenovo/design/widget/Snackbar$Callback;)Llenovo/design/widget/Snackbar;
    .locals 0
    .param p1, "callback"    # Llenovo/design/widget/Snackbar$Callback;
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 400
    iput-object p1, p0, Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;

    .line 401
    return-object p0
.end method

.method public setDuration(I)Llenovo/design/widget/Snackbar;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 355
    iput p1, p0, Llenovo/design/widget/Snackbar;->mDuration:I

    .line 356
    return-object p0
.end method

.method public setText(I)Llenovo/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Llenovo/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Llenovo/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Llenovo/design/widget/Snackbar;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 332
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 381
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Llenovo/design/widget/Snackbar;->mDuration:I

    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Llenovo/design/widget/SnackbarManager;->show(ILlenovo/design/widget/SnackbarManager$Callback;)V

    .line 382
    return-void
.end method

.method final showView()V
    .locals 4

    .prologue
    .line 424
    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 425
    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 427
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 430
    new-instance v0, Llenovo/design/widget/Snackbar$Behavior;

    invoke-direct {v0, p0}, Llenovo/design/widget/Snackbar$Behavior;-><init>(Llenovo/design/widget/Snackbar;)V

    .line 431
    .local v0, "behavior":Llenovo/design/widget/Snackbar$Behavior;
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Llenovo/design/widget/Snackbar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 432
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Llenovo/design/widget/Snackbar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 433
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Llenovo/design/widget/Snackbar$Behavior;->setSwipeDirection(I)V

    .line 434
    new-instance v2, Llenovo/design/widget/Snackbar$4;

    invoke-direct {v2, p0}, Llenovo/design/widget/Snackbar$4;-><init>(Llenovo/design/widget/Snackbar;)V

    invoke-virtual {v0, v2}, Llenovo/design/widget/Snackbar$Behavior;->setListener(Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 455
    check-cast v1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Llenovo/design/widget/CoordinatorLayout$Behavior;)V

    .line 458
    .end local v0    # "behavior":Llenovo/design/widget/Snackbar$Behavior;
    :cond_0
    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    :cond_1
    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-direct {p0}, Llenovo/design/widget/Snackbar;->animateViewIn()V

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_2
    iget-object v2, p0, Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Llenovo/design/widget/Snackbar$5;

    invoke-direct {v3, p0}, Llenovo/design/widget/Snackbar$5;-><init>(Llenovo/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
