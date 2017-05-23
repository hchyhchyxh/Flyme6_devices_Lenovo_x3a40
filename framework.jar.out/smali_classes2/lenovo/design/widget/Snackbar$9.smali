.class Llenovo/design/widget/Snackbar$9;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 540
    iput-object p1, p0, Llenovo/design/widget/Snackbar$9;->this$0:Llenovo/design/widget/Snackbar;

    iput p2, p0, Llenovo/design/widget/Snackbar$9;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 543
    iget-object v0, p0, Llenovo/design/widget/Snackbar$9;->this$0:Llenovo/design/widget/Snackbar;

    iget v1, p0, Llenovo/design/widget/Snackbar$9;->val$event:I

    # invokes: Llenovo/design/widget/Snackbar;->onViewHidden(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/Snackbar;->access$600(Llenovo/design/widget/Snackbar;I)V

    .line 544
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 550
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 547
    return-void
.end method
