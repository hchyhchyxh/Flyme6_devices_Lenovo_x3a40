.class public Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "QtiGsmServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiGsmSST"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 51
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 52
    const-string v1, "rat"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 53
    const-string v1, "rac"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 58
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 60
    new-instance v1, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;-><init>(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v1, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic access$102(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method private enableBackgroundData()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method


# virtual methods
.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 11
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 92
    iget-object v8, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    if-eq v8, v9, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_2

    .line 99
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 102
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v8, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 108
    :cond_3
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v8, :cond_4

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 206
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v9

    .line 207
    iget-object v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-nez v8, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->updateRoamingState()V

    .line 209
    iget-object v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v9, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 113
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 195
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    iget-object v8, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 117
    .local v5, "states":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 118
    .local v7, "type":I
    const/4 v4, 0x4

    .line 119
    .local v4, "regState":I
    const/4 v8, -0x1

    iput v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 120
    const/4 v8, 0x1

    iput v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 121
    array-length v8, v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v8, :cond_9

    .line 123
    const/4 v8, 0x0

    :try_start_2
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 127
    array-length v8, v5

    const/4 v9, 0x4

    if-lt v8, v9, :cond_6

    const/4 v8, 0x3

    aget-object v8, v5, v8

    if-eqz v8, :cond_6

    .line 128
    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 130
    :cond_6
    array-length v8, v5

    const/4 v9, 0x5

    if-lt v8, v9, :cond_7

    const/4 v8, 0x3

    if-ne v4, v8, :cond_7

    .line 132
    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 135
    :cond_7
    array-length v8, v5

    const/4 v9, 0x6

    if-lt v8, v9, :cond_8

    .line 136
    const/4 v8, 0x5

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 139
    :cond_8
    array-length v8, v5

    const/4 v9, 0x7

    if-lt v8, v9, :cond_9

    .line 140
    const/4 v8, 0x6

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 141
    .local v6, "tac":I
    const-string v8, "QtiGsmSST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated TAC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", old TAC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    if-eq v8, v6, :cond_9

    .line 144
    iput v6, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 145
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v6    # "tac":I
    :cond_9
    :goto_2
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v1

    .line 153
    .local v1, "dataRegState":I
    iget-object v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v1}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mDataRoaming:Z

    .line 155
    iget-object v8, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v7}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " regState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataRadioTechnology="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    .end local v1    # "dataRegState":I
    :catch_1
    move-exception v3

    .line 149
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error parsing GprsRegistrationState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 113
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "QtiGsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method protected pollStateDone()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 217
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 219
    .local v0, "hasLacChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    .line 223
    :cond_0
    return-void

    .line 217
    .end local v0    # "hasLacChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
