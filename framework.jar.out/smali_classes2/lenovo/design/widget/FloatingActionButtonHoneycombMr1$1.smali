.class Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;


# direct methods
.method constructor <init>(Llenovo/design/widget/FloatingActionButtonHoneycombMr1;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 57
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x0

    # setter for: Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Llenovo/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 58
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x0

    # setter for: Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Llenovo/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 63
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 51
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x1

    # setter for: Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Llenovo/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 52
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method
