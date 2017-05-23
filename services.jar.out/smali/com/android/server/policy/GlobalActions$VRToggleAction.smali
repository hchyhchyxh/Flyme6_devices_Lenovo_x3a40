.class Lcom/android/server/policy/GlobalActions$VRToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1680
    const v1, 0x1080444

    const v2, 0x1080443

    const v3, 0x104008f

    const v4, 0x1040091

    const v5, 0x1040090

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1685
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1688
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->getSplitStatus()I
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$2200(Lcom/android/server/policy/GlobalActions;)I

    move-result v1

    .line 1689
    .local v1, "status":I
    if-eqz v1, :cond_1

    move v0, v2

    .line 1690
    .local v0, "state":Z
    :goto_0
    if-ne p1, v0, :cond_2

    .line 1702
    :cond_0
    :goto_1
    return-void

    .end local v0    # "state":Z
    :cond_1
    move v0, v3

    .line 1689
    goto :goto_0

    .line 1693
    .restart local v0    # "state":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v5, "com.snailvr.manager"

    # invokes: Lcom/android/server/policy/GlobalActions;->isAppOnForeground(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/policy/GlobalActions;->access$2300(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1696
    if-nez v1, :cond_3

    .line 1697
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v3, v2}, Lcom/android/server/policy/GlobalActions;->access$2400(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_1

    .line 1698
    :cond_3
    if-ne v1, v2, :cond_0

    .line 1699
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->access$2400(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1719
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1715
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 2

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->getSplitStatus()I
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$2200(Lcom/android/server/policy/GlobalActions;)I

    move-result v0

    .line 1706
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 1707
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1708
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1709
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method
