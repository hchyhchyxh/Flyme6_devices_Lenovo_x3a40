.class Llenovo/design/widget/Snackbar$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/Snackbar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/Snackbar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Llenovo/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Llenovo/design/widget/Snackbar$8;->this$0:Llenovo/design/widget/Snackbar;

    iput p2, p0, Llenovo/design/widget/Snackbar$8;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 533
    iget-object v0, p0, Llenovo/design/widget/Snackbar$8;->this$0:Llenovo/design/widget/Snackbar;

    iget v1, p0, Llenovo/design/widget/Snackbar$8;->val$event:I

    # invokes: Llenovo/design/widget/Snackbar;->onViewHidden(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/Snackbar;->access$600(Llenovo/design/widget/Snackbar;I)V

    .line 534
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 528
    iget-object v0, p0, Llenovo/design/widget/Snackbar$8;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$400(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->animateChildrenOut(II)V

    .line 529
    return-void
.end method
