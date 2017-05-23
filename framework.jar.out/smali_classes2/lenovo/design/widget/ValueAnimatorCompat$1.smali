.class Llenovo/design/widget/ValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/ValueAnimatorCompat;

.field final synthetic val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Llenovo/design/widget/ValueAnimatorCompat;Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Llenovo/design/widget/ValueAnimatorCompat$1;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Llenovo/design/widget/ValueAnimatorCompat$1;->val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat$1;->val$updateListener:Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    iget-object v1, p0, Llenovo/design/widget/ValueAnimatorCompat$1;->this$0:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;->onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V

    .line 133
    return-void
.end method
