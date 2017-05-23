.class Llenovo/design/widget/ValueAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/ValueAnimatorCompat;->setListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/ValueAnimatorCompat;

.field final synthetic val$listener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;


# direct methods
.method constructor <init>(Llenovo/design/widget/ValueAnimatorCompat;Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->val$listener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->val$listener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationCancel(Llenovo/design/widget/ValueAnimatorCompat;)V

    .line 156
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->val$listener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationEnd(Llenovo/design/widget/ValueAnimatorCompat;)V

    .line 151
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->val$listener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Llenovo/design/widget/ValueAnimatorCompat$2;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationStart(Llenovo/design/widget/ValueAnimatorCompat;)V

    .line 146
    return-void
.end method
