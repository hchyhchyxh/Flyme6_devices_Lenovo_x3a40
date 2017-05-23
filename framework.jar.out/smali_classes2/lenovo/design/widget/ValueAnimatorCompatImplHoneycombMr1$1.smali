.class Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplHoneycombMr1.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;

.field final synthetic val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# direct methods
.method constructor <init>(Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->this$0:Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;

    iput-object p2, p0, Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 52
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 53
    return-void
.end method
