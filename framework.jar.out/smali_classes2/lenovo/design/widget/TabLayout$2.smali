.class Llenovo/design/widget/TabLayout$2;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/TabLayout;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/TabLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Llenovo/design/widget/TabLayout$2;->this$0:Llenovo/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 3
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 783
    iget-object v0, p0, Llenovo/design/widget/TabLayout$2;->this$0:Llenovo/design/widget/TabLayout;

    invoke-virtual {p1}, Llenovo/design/widget/ValueAnimatorCompat;->getAnimatedIntValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llenovo/design/widget/TabLayout;->scrollTo(II)V

    .line 784
    return-void
.end method
