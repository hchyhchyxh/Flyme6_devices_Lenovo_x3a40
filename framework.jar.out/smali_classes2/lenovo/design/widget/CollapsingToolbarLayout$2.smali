.class Llenovo/design/widget/CollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/CollapsingToolbarLayout;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout$2;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 494
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$2;->this$0:Llenovo/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1}, Llenovo/design/widget/ValueAnimatorCompat;->getAnimatedIntValue()I

    move-result v1

    # invokes: Llenovo/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->access$200(Llenovo/design/widget/CollapsingToolbarLayout;I)V

    .line 495
    return-void
.end method
