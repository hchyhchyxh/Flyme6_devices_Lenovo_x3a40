.class Llenovo/design/widget/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/Snackbar;->showView()V
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
    .line 434
    iput-object p1, p0, Llenovo/design/widget/Snackbar$4;->this$0:Llenovo/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 437
    iget-object v0, p0, Llenovo/design/widget/Snackbar$4;->this$0:Llenovo/design/widget/Snackbar;

    const/4 v1, 0x0

    # invokes: Llenovo/design/widget/Snackbar;->dispatchDismiss(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/Snackbar;->access$000(Llenovo/design/widget/Snackbar;I)V

    .line 438
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 446
    :pswitch_0
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$4;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->cancelTimeout(Llenovo/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 450
    :pswitch_1
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$4;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->restoreTimeout(Llenovo/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
