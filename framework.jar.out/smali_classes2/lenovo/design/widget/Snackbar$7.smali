.class Llenovo/design/widget/Snackbar$7;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 501
    iput-object p1, p0, Llenovo/design/widget/Snackbar$7;->this$0:Llenovo/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 504
    iget-object v0, p0, Llenovo/design/widget/Snackbar$7;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$500(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Llenovo/design/widget/Snackbar$7;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mCallback:Llenovo/design/widget/Snackbar$Callback;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$500(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$Callback;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$7;->this$0:Llenovo/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Llenovo/design/widget/Snackbar$Callback;->onShown(Llenovo/design/widget/Snackbar;)V

    .line 507
    :cond_0
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$7;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->onShown(Llenovo/design/widget/SnackbarManager$Callback;)V

    .line 508
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 511
    return-void
.end method
