.class Lcom/android/server/policy/GlobalActions$3;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104013c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x104013a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 566
    const v2, 0x104013b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 567
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    const v2, 0x104038f

    new-instance v3, Lcom/android/server/policy/GlobalActions$3$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$3$1;-><init>(Lcom/android/server/policy/GlobalActions$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 592
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 593
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 594
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    return v0
.end method