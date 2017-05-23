.class Lcom/android/server/wifi/WifiStateMachine$getClientIp;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getClientIp"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    .line 10413
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10414
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->address:Ljava/lang/String;

    .line 10415
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 10418
    const/4 v1, 0x0

    .line 10419
    .local v1, "countTries":I
    const/4 v0, 0x0

    .line 10420
    .local v0, "Ip_Addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 10422
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    :try_start_0
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add softap flow client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    .line 10423
    .end local v1    # "countTries":I
    .local v2, "countTries":I
    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "countTries":I
    .restart local v1    # "countTries":I
    if-ge v2, v8, :cond_1

    .line 10425
    const-wide/16 v6, 0xbb8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10428
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10429
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get softap client IP address count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1    # "countTries":I
    .restart local v2    # "countTries":I
    goto :goto_0

    :cond_0
    move v1, v2

    .line 10431
    .end local v2    # "countTries":I
    .restart local v1    # "countTries":I
    :cond_1
    if-ge v1, v8, :cond_2

    if-nez v0, :cond_3

    .line 10432
    :cond_2
    const-string v5, "WifiStateMachine"

    const-string v6, "get softap client IP address failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 10444
    :goto_2
    return-void

    .line 10435
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$getClientIp;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/os/INetworkManagementService;->addFlowClient(Ljava/lang/String;)V

    .line 10436
    const-string v5, "WifiStateMachine"

    const-string v6, "add flow client successfully!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 10437
    :catch_0
    move-exception v3

    .line 10438
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in addFlowClient:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 10441
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 10442
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in addFlowClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10426
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_1
.end method
