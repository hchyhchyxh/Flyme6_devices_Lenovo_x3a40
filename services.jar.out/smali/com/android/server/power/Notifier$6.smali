.class Lcom/android/server/power/Notifier$6;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWfdNappingMode(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$isWfdNappingEnabled:Z

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;ZI)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$6;->val$isWfdNappingEnabled:Z

    iput p3, p0, Lcom/android/server/power/Notifier$6;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$6;->val$isWfdNappingEnabled:Z

    iget v2, p0, Lcom/android/server/power/Notifier$6;->val$reason:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setWfdNappingPolicy(ZI)V

    .line 482
    return-void
.end method
