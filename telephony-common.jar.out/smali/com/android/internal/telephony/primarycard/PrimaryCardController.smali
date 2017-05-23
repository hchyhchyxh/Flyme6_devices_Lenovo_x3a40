.class public Lcom/android/internal/telephony/primarycard/PrimaryCardController;
.super Landroid/os/Handler;
.source "PrimaryCardController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_SERVICE_STATE_CHENGED:I = 0x0

.field static final MULTI_MODE:Z

.field static final PHONE_COUNT:I

.field static final TAG:Ljava/lang/String; = "PrimaryCardController"

.field private static instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mAllCardsAbsent:Z

.field private mCardChanged:Z

.field private final mContext:Landroid/content/Context;

.field private mIccLoaded:[Z

.field private mIsMBNEnable:Z

.field private mNeedHandleModemReadyEvent:Z

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRestoreDdsToPrimarySub:Z

.field private mShowSimInfo:Z

.field private resetFromVSim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    .line 85
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->MULTI_MODE:Z

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mNeedHandleModemReadyEvent:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 100
    const-string v1, "persist.radio.enable_mbn"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    .line 106
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 109
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIccLoaded:[Z

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIccLoaded:[Z

    aput-boolean v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method private getCount(Ljava/util/Map;I)I
    .locals 4
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 575
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 576
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;
    .locals 3

    .prologue
    .line 460
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 461
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PrimarySubSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 464
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getKey(Ljava/util/Map;I)Ljava/lang/Integer;
    .locals 3
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 585
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 589
    .end local v1    # "key":Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 593
    const/4 v0, -0x1

    .line 595
    .local v0, "nwMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 597
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPriority(Ljava/util/Map;Ljava/lang/Integer;)I
    .locals 4
    .param p2, "higherPriority"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 561
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v0

    .line 562
    .local v0, "count":I
    if-ne v0, v3, :cond_1

    .line 563
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getKey(Ljava/util/Map;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 569
    :cond_0
    :goto_0
    return v1

    .line 564
    :cond_1
    if-gt v0, v3, :cond_0

    .line 566
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 567
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v1

    goto :goto_0
.end method

.method private getSavePrimarySlot(I[Ljava/lang/String;)I
    .locals 7
    .param p1, "slot"    # I
    .param p2, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 154
    if-eqz p2, :cond_0

    array-length v4, p2

    sget v5, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v4, v5, :cond_2

    :cond_0
    move v0, v3

    .line 164
    :cond_1
    :goto_0
    return v0

    .line 156
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "iccIdInSP":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v4, :cond_4

    .line 159
    aget-object v2, p2, v0

    .line 160
    .local v2, "sIccid":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "sIccid":Ljava/lang/String;
    :cond_4
    move v0, v3

    .line 164
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    .line 456
    :cond_0
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllCardsAbsent()Z
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 193
    sget-object v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 194
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card state on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x0

    .line 200
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v2

    .line 192
    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    const-string v2, "all cards absent"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAllCmccCard([Ljava/lang/String;)Z
    .locals 5
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 274
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v4, [I

    .line 275
    .local v1, "isCmcc":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 276
    aput v3, v1, v0

    .line 277
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCmccCard(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    aput v2, v1, v0

    .line 275
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    aput v3, v1, v0

    goto :goto_1

    .line 283
    :cond_1
    aget v4, v1, v3

    if-ne v4, v2, :cond_2

    aget v4, v1, v2

    if-ne v4, v2, :cond_2

    .line 285
    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private loadStates([Ljava/lang/String;)V
    .locals 6
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v4, :cond_1

    .line 177
    aget-object v4, p1, v0

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCardsInfoChanged(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    .line 183
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCross(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 184
    .local v1, "misCross":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadStates:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 187
    iget-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    if-nez v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 189
    return-void

    :cond_2
    move v2, v3

    .line 187
    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "PrimaryCardController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private retrievePriorities([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "iccId"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v3, :cond_0

    .line 554
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 555
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    return-object v1
.end method

.method private sendMsg()V
    .locals 19

    .prologue
    .line 320
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v14

    .line 321
    .local v14, "smsManager":Landroid/telephony/SmsManager;
    const-string v3, "10690999127107"

    .line 322
    .local v3, "destAddr":Ljava/lang/String;
    const-string v13, ""

    .line 323
    .local v13, "sdAddr":Ljava/lang/String;
    const-string v17, "gsm.imei1"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "imei1":Ljava/lang/String;
    const-string v17, "gsm.imei2"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "imei2":Ljava/lang/String;
    const-string v17, "cdma.meid"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 327
    .local v8, "info0":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 328
    .local v9, "info1":Landroid/telephony/SubscriptionInfo;
    const-string v6, ""

    .line 329
    .local v6, "imsi1":Ljava/lang/String;
    const-string v7, ""

    .line 330
    .local v7, "imsi2":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 331
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    :cond_0
    if-eqz v9, :cond_1

    .line 334
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 336
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "body":Ljava/lang/String;
    const-string v17, "persist.radio.ruimenabled"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 339
    .local v11, "isPrimarySubFeatureEnable":Z
    if-eqz v11, :cond_2

    .line 340
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sendMsg:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 343
    const/4 v10, 0x0

    .line 344
    .local v10, "isChecked":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 345
    const/16 v17, 0x8

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "subString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 347
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 348
    .local v16, "value":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "value is:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 349
    const-string v17, "86788102"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "86788002"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 350
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v17, 0x1388

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 351
    const/4 v10, 0x1

    .line 361
    .end local v15    # "subString":Ljava/lang/String;
    .end local v16    # "value":I
    :cond_4
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isChecked:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 362
    if-eqz v10, :cond_5

    .line 366
    :cond_5
    return-void

    .line 354
    .restart local v15    # "subString":Ljava/lang/String;
    .restart local v16    # "value":I
    :cond_6
    const-string v17, "86776502"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 355
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v17, 0xfa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 356
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private updateConfigFeature([Ljava/lang/String;)V
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isZoomTdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCmccCard([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "persist.radio.primarycard"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v0, "persist.radio.primarycard"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected alertSIMChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "send intent to NewSimActivity,while Settings don\'t use NewSimActivity any more,so ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public clearSaveSubscriptions()V
    .locals 4

    .prologue
    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public configPrimaryLteSub([Ljava/lang/String;)I
    .locals 10
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/16 v9, -0x3e9

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 370
    const-string v7, "persist.radio.enable_mbn"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 372
    const/4 v4, 0x0

    .line 373
    .local v4, "slot":I
    const/4 v3, 0x0

    .line 375
    .local v3, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getprimarySlot()I

    move-result v3

    .line 376
    move v4, v3

    .line 378
    if-eqz p1, :cond_0

    array-length v7, p1

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    move v5, v4

    .line 438
    :goto_0
    return v5

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->loadStates([Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 382
    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isPrimarySetable([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 384
    const-string v5, "primary is not setable in any sub!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v5, v4

    .line 438
    goto :goto_0

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v2

    .line 394
    .local v2, "prefPrimarySlot":I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preferred primary slot is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is card changed sms test? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 397
    if-ne v2, v6, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-nez v7, :cond_5

    if-ne v3, v6, :cond_a

    .line 400
    :cond_5
    move v4, v3

    .line 406
    :cond_6
    :goto_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v6, :cond_3

    .line 408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    .line 410
    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    if-nez v6, :cond_7

    .line 414
    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 416
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    if-eqz v6, :cond_8

    .line 417
    iput-boolean v5, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 420
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 421
    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 429
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 430
    .local v1, "phoneId":I
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneId is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 431
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 432
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, p0, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 390
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "phoneId":I
    .end local v2    # "prefPrimarySlot":I
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrefPrimarySlot([Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 402
    .restart local v2    # "prefPrimarySlot":I
    :cond_a
    if-eq v2, v6, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-nez v6, :cond_b

    if-eq v2, v3, :cond_6

    .line 403
    :cond_b
    move v4, v2

    goto :goto_3

    :cond_c
    move v1, v5

    .line 429
    goto :goto_4
.end method

.method public getMode(ILjava/lang/String;)I
    .locals 5
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 504
    const/4 v0, -0x1

    .line 505
    .local v0, "mode":I
    if-gez p1, :cond_0

    move v1, v0

    .line 513
    .end local v0    # "mode":I
    .local v1, "mode":I
    :goto_0
    return v1

    .line 508
    .end local v1    # "mode":I
    .restart local v0    # "mode":I
    :cond_0
    if-ltz p1, :cond_1

    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v3, :cond_1

    .line 509
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 510
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINMode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    move v1, v0

    .line 513
    .end local v0    # "mode":I
    .restart local v1    # "mode":I
    goto :goto_0
.end method

.method public getPrefPrimarySlot([Ljava/lang/String;)I
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->retrievePriorities([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getHighestPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public getSimName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "spn":Ljava/lang/String;
    return-object v0
.end method

.method public getVSimSlot()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    const-string v2, "net.ppp.esim-info"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "esim_info":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVSimSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v4, :cond_0

    .line 128
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .end local v1    # "values":[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getprimarySlot()I
    .locals 3

    .prologue
    .line 603
    const-string v1, "persist.radio.msim.stackid_0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 604
    .local v0, "primaryslot":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 302
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 305
    .local v2, "phoneId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 306
    .local v3, "state":Landroid/telephony/ServiceState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 308
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 309
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->sendMsg()V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isCardChanged()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    return v0
.end method

.method protected isCardsInfoChanged(ILjava/lang/String;)Z
    .locals 6
    .param p1, "sub"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "iccIdInSP":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icc id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icc id in sp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    .local v0, "changed":Z
    :cond_0
    :goto_0
    return v0

    .end local v0    # "changed":Z
    :cond_1
    move v0, v2

    .line 138
    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method isCmccCard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const-string v0, "898600"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "898602"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "898607"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCross(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "iccId0"    # Ljava/lang/String;
    .param p2, "iccId1"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "iccIdInSP":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "iccIdInSP1":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 150
    :cond_0
    return v2
.end method

.method public isPrimaryLteSubEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    const-string v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrimarySetable([Ljava/lang/String;)Z
    .locals 3
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->retrievePriorities([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 543
    .local v0, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v1

    .line 544
    .local v1, "unsetableCount":I
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomTdd()Z
    .locals 3

    .prologue
    .line 257
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "name":Ljava/lang/String;
    const-string v1, "zoom_tdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 261
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savePrimarySlot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigLteDone isManualConfigMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 445
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->alertSIMChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 449
    return-void
.end method

.method public saveSubscriptions([Ljava/lang/String;)V
    .locals 4
    .param p1, "iccId"    # [Ljava/lang/String;

    .prologue
    .line 207
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 211
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save subscription on sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iccId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public setPreferredNetwork(ILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Message;

    .prologue
    .line 517
    const/4 v3, -0x1

    .line 518
    .local v3, "network":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetwork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 520
    if-gez p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 524
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v0, :cond_1

    .line 525
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 526
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 527
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 528
    const-string v0, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    .end local v6    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set primary card for sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 534
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;-><init>(Landroid/content/Context;IIZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->loop()V

    goto :goto_0
.end method

.method public setPreferredNetwork(ILjava/lang/String;ZLandroid/os/Message;)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "bootup"    # Z
    .param p4, "callback"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 469
    const/4 v3, -0x1

    .line 470
    .local v3, "network":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetwork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 471
    const-string v0, "persist.radio.enable_mbn"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 473
    if-gez p1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    if-ltz p1, :cond_2

    sget v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v0, :cond_2

    .line 478
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    .line 479
    .local v7, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v0

    invoke-virtual {v0, p2, v7}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 480
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 481
    const-string v0, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 486
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-eqz v0, :cond_0

    .line 493
    .end local v7    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v0, :cond_3

    .line 494
    if-nez p1, :cond_4

    .line 495
    .local v6, "other":I
    :goto_1
    const/4 p3, 0x1

    .line 498
    .end local v6    # "other":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set primary card for sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;-><init>(Landroid/content/Context;IIZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->loop()V

    goto :goto_0

    .line 494
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setRestoreDdsToPrimarySub(Z)V
    .locals 0
    .param p1, "restoreDdsToPrimarySub"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 172
    return-void
.end method
