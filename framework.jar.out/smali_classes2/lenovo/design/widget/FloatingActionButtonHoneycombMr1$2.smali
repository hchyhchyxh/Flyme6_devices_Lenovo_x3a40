.class Llenovo/design/widget/FloatingActionButtonHoneycombMr1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->show()V
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
    .line 82
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$2;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 85
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1$2;->this$0:Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method
