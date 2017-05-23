.class Llenovo/design/widget/Snackbar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/Snackbar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/Snackbar;


# direct methods
.method constructor <init>(Llenovo/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 491
    iget-object v0, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$500(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$500(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$Callback;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Llenovo/design/widget/Snackbar$Callback;->onShown(Llenovo/design/widget/Snackbar;)V

    .line 494
    :cond_0
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->onShown(Llenovo/design/widget/SnackbarManager$Callback;)V

    .line 495
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 485
    iget-object v0, p0, Llenovo/design/widget/Snackbar$6;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$400(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Llenovo/design/widget/Snackbar$SnackbarLayout;->animateChildrenIn(II)V

    .line 487
    return-void
.end method
