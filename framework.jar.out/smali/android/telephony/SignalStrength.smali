.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final is5barSignal:Z

.field private static updatedLteRsrp:I

.field private static updatedLteRsrpTime:J


# instance fields
.field private isGsm:Z

.field private isWcdma:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 37
    const-string v0, "five"

    const-string/jumbo v1, "ro.lenovo.signalbars"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/SignalStrength;->is5barSignal:Z

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "excellent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 87
    const/4 v0, -0x1

    sput v0, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 88
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    .line 436
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 67
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 68
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 116
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 117
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 118
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 119
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 120
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 121
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 122
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 123
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 124
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 125
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 129
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 166
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 169
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 170
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 185
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    .line 320
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto :goto_0

    :cond_1
    move v1, v2

    .line 319
    goto :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 141
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 142
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 143
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 144
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 145
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 146
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 147
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 148
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 149
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 153
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 154
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1363
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 16
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 332
    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8}, Landroid/telephony/SignalStrength;-><init>()V

    .line 333
    .local v8, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 344
    .local v7, "newRsrp":I
    if-eqz v7, :cond_2

    const v11, 0x7fffffff

    if-eq v7, v11, :cond_2

    .line 345
    const-string/jumbo v11, "persist.lte.downgrade.delay"

    const/16 v12, 0xa

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 346
    .local v2, "downgradeDelay":I
    const-string/jumbo v11, "persist.lte.threshold.value"

    const/16 v12, 0x71

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 347
    .local v9, "threshold":I
    const-string/jumbo v11, "persist.lte.lowthreshold.jump"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 348
    .local v6, "lowthresholdJump":I
    const-string/jumbo v11, "persist.lte.highthreshold.jump"

    const/4 v12, 0x5

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 349
    .local v3, "highthresholdJump":I
    const/4 v11, -0x1

    sget v12, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    if-ne v11, v12, :cond_0

    .line 350
    sput v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sput-wide v12, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 355
    .local v0, "currentTime":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "signal newRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updatedLteRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " currentTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updatedLteRsrpTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "log":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 358
    const/16 v11, 0x76

    if-lt v7, v11, :cond_4

    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    if-le v7, v11, :cond_4

    sget-wide v12, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    const-wide/16 v14, 0xbb8

    add-long/2addr v12, v14

    cmp-long v11, v0, v12

    if-lez v11, :cond_4

    .line 359
    move v10, v6

    .line 360
    .local v10, "thresholdJump":I
    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    if-ge v11, v9, :cond_1

    .line 361
    move v10, v3

    .line 363
    :cond_1
    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    sub-int/2addr v11, v10

    if-le v7, v11, :cond_3

    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    add-int/2addr v11, v10

    if-ge v7, v11, :cond_3

    .line 365
    sget v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 371
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "thresholdJump: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updatedLteRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "log1":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 394
    .end local v0    # "currentTime":J
    .end local v2    # "downgradeDelay":I
    .end local v3    # "highthresholdJump":I
    .end local v4    # "log":Ljava/lang/String;
    .end local v5    # "log1":Ljava/lang/String;
    .end local v6    # "lowthresholdJump":I
    .end local v9    # "threshold":I
    .end local v10    # "thresholdJump":I
    :cond_2
    :goto_1
    iput v7, v8, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, v8, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 400
    return-object v8

    .line 367
    .restart local v0    # "currentTime":J
    .restart local v2    # "downgradeDelay":I
    .restart local v3    # "highthresholdJump":I
    .restart local v4    # "log":Ljava/lang/String;
    .restart local v6    # "lowthresholdJump":I
    .restart local v9    # "threshold":I
    .restart local v10    # "thresholdJump":I
    :cond_3
    sput v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 368
    sput-wide v0, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    goto :goto_0

    .line 374
    .end local v10    # "thresholdJump":I
    :cond_4
    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    if-le v7, v11, :cond_5

    sget-wide v12, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    mul-int/lit16 v11, v2, 0x3e8

    int-to-long v14, v11

    add-long/2addr v12, v14

    cmp-long v11, v0, v12

    if-gez v11, :cond_5

    .line 375
    sget v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    goto :goto_1

    .line 377
    :cond_5
    move v10, v6

    .line 378
    .restart local v10    # "thresholdJump":I
    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    if-ge v11, v9, :cond_6

    .line 379
    move v10, v3

    .line 381
    :cond_6
    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    sub-int/2addr v11, v10

    if-le v7, v11, :cond_7

    sget v11, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    add-int/2addr v11, v10

    if-ge v7, v11, :cond_7

    .line 383
    sget v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 389
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "thresholdJump: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updatedLteRsrp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    .restart local v5    # "log1":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    .end local v5    # "log1":Ljava/lang/String;
    :cond_7
    sput v7, Landroid/telephony/SignalStrength;->updatedLteRsrp:I

    .line 386
    sput-wide v0, Landroid/telephony/SignalStrength;->updatedLteRsrpTime:J

    goto :goto_2
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 104
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 105
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 106
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1320
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1321
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1322
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1323
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1324
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1325
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1326
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1327
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1328
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1329
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1330
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1331
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1332
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1333
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1334
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 285
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 286
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 287
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 288
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 289
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 290
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 291
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 292
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 293
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 294
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isWcdma:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    .line 295
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1264
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1273
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1265
    :catch_0
    move-exception v1

    .line 1266
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1273
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isWcdma:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1343
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1345
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1346
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1349
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1353
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1357
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 635
    .local v0, "asuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    .line 636
    .local v3, "level":I
    if-eqz v3, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v4

    .line 665
    :goto_0
    return v4

    .line 640
    :cond_0
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_3

    .line 641
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v4

    if-nez v4, :cond_2

    .line 642
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v4

    if-nez v4, :cond_1

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    :goto_1
    move v4, v0

    .line 665
    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_1

    .line 648
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_1

    .line 651
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 652
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 653
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 655
    move v0, v1

    goto :goto_1

    .line 656
    :cond_4
    if-nez v1, :cond_5

    .line 658
    move v0, v2

    goto :goto_1

    .line 661
    :cond_5
    if-ge v1, v2, :cond_6

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 904
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 905
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 909
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 917
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 924
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 926
    .local v4, "level":I
    :goto_2
    return v4

    .line 910
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 911
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 912
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 913
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 914
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 918
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 919
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 920
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 921
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 922
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 924
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    const/16 v6, -0x5a

    .line 855
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 856
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 868
    .local v1, "cdmaEcio":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v5, :cond_5

    .line 869
    if-lt v0, v6, :cond_0

    const/4 v3, 0x5

    .line 885
    .local v3, "levelDbm":I
    :goto_0
    if-lt v1, v6, :cond_a

    const/4 v4, 0x4

    .line 892
    .local v4, "levelEcio":I
    :goto_1
    move v2, v3

    .line 895
    .local v2, "level":I
    return v2

    .line 870
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_0
    const/16 v5, -0x60

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 871
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x66

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 872
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 873
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 874
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 876
    .end local v3    # "levelDbm":I
    :cond_5
    const/16 v5, -0x5e

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 877
    .end local v3    # "levelDbm":I
    :cond_6
    const/16 v5, -0x65

    if-lt v0, v5, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 878
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x69

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 879
    .end local v3    # "levelDbm":I
    :cond_8
    const/16 v5, -0x6d

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 880
    .end local v3    # "levelDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 886
    :cond_a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_b

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 887
    .end local v4    # "levelEcio":I
    :cond_b
    const/16 v5, -0x82

    if-lt v1, v5, :cond_c

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 888
    .end local v4    # "levelEcio":I
    :cond_c
    const/16 v5, -0x96

    if-lt v1, v5, :cond_d

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 889
    .end local v4    # "levelEcio":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1
.end method

.method public getCustomizedGsmDbmLevel()I
    .locals 5

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 817
    .local v0, "dbm":I
    const/4 v1, 0x0

    .line 819
    .local v1, "level":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 822
    .local v2, "threshGsm":[I
    const/4 v3, 0x5

    aget v3, v2, v3

    if-le v0, v3, :cond_1

    const/4 v1, 0x0

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 823
    :cond_1
    const/4 v3, 0x4

    aget v3, v2, v3

    if-lt v0, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 824
    :cond_2
    const/4 v3, 0x3

    aget v3, v2, v3

    if-lt v0, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 825
    :cond_3
    const/4 v3, 0x2

    aget v3, v2, v3

    if-lt v0, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 826
    :cond_4
    const/4 v3, 0x1

    aget v3, v2, v3

    if-lt v0, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 827
    :cond_5
    const/4 v3, 0x0

    aget v3, v2, v3

    if-lt v0, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDbm()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x78

    .line 674
    const v1, 0x7fffffff

    .line 677
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    .line 678
    .local v3, "lenvel":I
    if-eqz v3, :cond_2

    .line 679
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 680
    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v0, v1

    .line 707
    :cond_1
    :goto_0
    return v0

    .line 685
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 686
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 687
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_3

    .line 688
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v4

    if-nez v4, :cond_5

    .line 689
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 703
    :cond_3
    :goto_1
    if-ne v1, v6, :cond_4

    .line 704
    const/4 v1, 0x0

    :cond_4
    move v0, v1

    .line 707
    goto :goto_0

    .line 691
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_1

    .line 695
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 696
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 698
    .local v2, "evdoDbm":I
    if-eq v2, v5, :cond_1

    if-ne v0, v5, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-lt v0, v2, :cond_1

    move v0, v2

    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 983
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 987
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 994
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1001
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1003
    .local v2, "level":I
    :goto_2
    return v2

    .line 988
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 989
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 990
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 991
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 992
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 995
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 996
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 997
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 998
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 999
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1001
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 936
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 948
    .local v1, "evdoSnr":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v5, :cond_5

    .line 949
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_0

    const/4 v3, 0x5

    .line 963
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_a

    const/4 v4, 0x4

    .line 969
    .local v4, "levelEvdoSnr":I
    :goto_1
    move v2, v3

    .line 973
    .local v2, "level":I
    return v2

    .line 950
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x60

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 951
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x66

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 952
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 953
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 954
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 956
    .end local v3    # "levelEvdoDbm":I
    :cond_5
    const/16 v5, -0x5e

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 957
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x65

    if-lt v0, v5, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 958
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x69

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 959
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/16 v5, -0x6d

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 960
    .end local v3    # "levelEvdoDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 964
    :cond_a
    const/4 v5, 0x5

    if-lt v1, v5, :cond_b

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 965
    .end local v4    # "levelEvdoSnr":I
    :cond_b
    const/4 v5, 0x3

    if-lt v1, v5, :cond_c

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 966
    .end local v4    # "levelEvdoSnr":I
    :cond_c
    const/4 v5, 0x1

    if-lt v1, v5, :cond_d

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 967
    .end local v4    # "levelEvdoSnr":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 846
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 718
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 719
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 720
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 721
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 726
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 719
    goto :goto_0

    .line 723
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x6b

    const/16 v6, -0x6c

    const/16 v5, 0x63

    .line 735
    const/4 v2, 0x0

    .line 741
    .local v2, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 751
    .local v0, "asu":I
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 752
    .local v1, "dBm":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmLevel dBm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmLevel isWcdma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 754
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    if-eqz v3, :cond_e

    .line 755
    sget-boolean v3, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v3, :cond_7

    .line 758
    if-lez v0, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 807
    :goto_0
    return v2

    .line 760
    :cond_1
    const/16 v3, -0x5a

    if-lt v1, v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    .line 761
    :cond_2
    const/16 v3, -0x60

    if-lt v1, v3, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    .line 762
    :cond_3
    const/16 v3, -0x66

    if-lt v1, v3, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    .line 763
    :cond_4
    if-lt v1, v6, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    .line 764
    :cond_5
    const/16 v3, -0x70

    if-lt v1, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    .line 765
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 770
    :cond_7
    if-lez v0, :cond_8

    if-ne v0, v5, :cond_9

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 772
    :cond_9
    const/16 v3, -0x5b

    if-le v1, v3, :cond_a

    const/4 v2, 0x4

    goto :goto_0

    .line 773
    :cond_a
    const/16 v3, -0x63

    if-le v1, v3, :cond_b

    const/4 v2, 0x3

    goto :goto_0

    .line 774
    :cond_b
    if-le v1, v7, :cond_c

    const/4 v2, 0x2

    goto :goto_0

    .line 775
    :cond_c
    const/16 v3, -0x6f

    if-le v1, v3, :cond_d

    const/4 v2, 0x1

    goto :goto_0

    .line 776
    :cond_d
    const/4 v2, 0x0

    goto :goto_0

    .line 780
    :cond_e
    sget-boolean v3, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v3, :cond_16

    .line 783
    if-lez v0, :cond_f

    if-ne v0, v5, :cond_10

    :cond_f
    const/4 v2, 0x0

    goto :goto_0

    .line 785
    :cond_10
    const/16 v3, -0x59

    if-lt v1, v3, :cond_11

    const/4 v2, 0x5

    goto :goto_0

    .line 786
    :cond_11
    const/16 v3, -0x5f

    if-lt v1, v3, :cond_12

    const/4 v2, 0x4

    goto :goto_0

    .line 787
    :cond_12
    const/16 v3, -0x65

    if-lt v1, v3, :cond_13

    const/4 v2, 0x3

    goto :goto_0

    .line 788
    :cond_13
    const/16 v3, -0x69

    if-lt v1, v3, :cond_14

    const/4 v2, 0x2

    goto :goto_0

    .line 789
    :cond_14
    if-lt v1, v7, :cond_15

    const/4 v2, 0x1

    goto :goto_0

    .line 790
    :cond_15
    const/4 v2, 0x0

    goto :goto_0

    .line 795
    :cond_16
    if-lez v0, :cond_17

    if-ne v0, v5, :cond_18

    :cond_17
    const/4 v2, 0x0

    goto :goto_0

    .line 797
    :cond_18
    const/16 v3, -0x56

    if-lt v1, v3, :cond_19

    const/4 v2, 0x4

    goto :goto_0

    .line 798
    :cond_19
    const/16 v3, -0x5c

    if-lt v1, v3, :cond_1a

    const/4 v2, 0x3

    goto :goto_0

    .line 799
    :cond_1a
    const/16 v3, -0x62

    if-lt v1, v3, :cond_1b

    const/4 v2, 0x2

    goto :goto_0

    .line 800
    :cond_1b
    if-lt v1, v6, :cond_1c

    const/4 v2, 0x1

    goto :goto_0

    .line 801
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 6

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 591
    .local v2, "level":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 592
    if-eqz v2, :cond_0

    move v3, v2

    .line 624
    .end local v2    # "level":I
    .local v3, "level":I
    :goto_0
    return v3

    .line 596
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_0
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_3

    .line 597
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 598
    if-nez v2, :cond_1

    .line 599
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 600
    if-nez v2, :cond_1

    .line 601
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCustomizedGsmDbmLevel()I

    move-result v2

    :cond_1
    :goto_1
    move v3, v2

    .line 624
    .end local v2    # "level":I
    .restart local v3    # "level":I
    goto :goto_0

    .line 605
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_1

    .line 610
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 611
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 612
    .local v1, "evdoLevel":I
    if-nez v1, :cond_4

    .line 614
    move v2, v0

    goto :goto_1

    .line 615
    :cond_4
    if-nez v0, :cond_5

    .line 617
    move v2, v1

    goto :goto_1

    .line 620
    :cond_5
    if-ge v0, v1, :cond_6

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1137
    const/16 v0, 0x63

    .line 1138
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1152
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1155
    :goto_0
    return v0

    .line 1153
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 11

    .prologue
    const/16 v10, -0x61

    const/16 v9, -0x69

    const/16 v8, -0x71

    const/16 v7, -0x2c

    const/4 v6, -0x1

    .line 1027
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 1052
    .local v2, "snrIconLevel":I
    sget-boolean v3, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v3, :cond_6

    .line 1053
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1127
    :goto_1
    return v3

    .line 1055
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v10, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 1056
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1057
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v8, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1058
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x75

    if-lt v3, v4, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1059
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x79

    if-lt v3, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1060
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1064
    :cond_6
    const-string v3, "ct"

    const-string/jumbo v4, "ro.lenovo.operator"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1065
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_7

    const/4 v0, -0x1

    .line 1080
    :goto_2
    if-eq v0, v6, :cond_12

    move v3, v0

    goto :goto_1

    .line 1066
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x6a

    if-lt v3, v4, :cond_8

    const/4 v0, 0x4

    goto :goto_2

    .line 1067
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_9

    const/4 v0, 0x3

    goto :goto_2

    .line 1068
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x77

    if-lt v3, v4, :cond_a

    const/4 v0, 0x2

    goto :goto_2

    .line 1069
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x7b

    if-lt v3, v4, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    .line 1070
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 1072
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_d

    const/4 v0, -0x1

    goto :goto_2

    .line 1073
    :cond_d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v10, :cond_e

    const/4 v0, 0x4

    goto :goto_2

    .line 1074
    :cond_e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_f

    const/4 v0, 0x3

    goto :goto_2

    .line 1075
    :cond_f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v8, :cond_10

    const/4 v0, 0x2

    goto :goto_2

    .line 1076
    :cond_10
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_11

    const/4 v0, 0x1

    goto :goto_2

    .line 1077
    :cond_11
    const/4 v0, 0x0

    goto :goto_2

    .line 1082
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1085
    if-eq v0, v6, :cond_13

    move v3, v0

    goto/16 :goto_1

    .line 1093
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_15

    const/4 v2, -0x1

    .line 1105
    :cond_14
    :goto_3
    if-eq v2, v6, :cond_1b

    if-eq v0, v6, :cond_1b

    .line 1111
    if-ge v0, v2, :cond_1a

    move v3, v0

    goto/16 :goto_1

    .line 1094
    :cond_15
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_16

    const/4 v2, 0x4

    goto :goto_3

    .line 1095
    :cond_16
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_17

    const/4 v2, 0x3

    goto :goto_3

    .line 1096
    :cond_17
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_18

    const/4 v2, 0x2

    goto :goto_3

    .line 1097
    :cond_18
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_19

    const/4 v2, 0x1

    goto :goto_3

    .line 1098
    :cond_19
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_14

    .line 1099
    const/4 v2, 0x0

    goto :goto_3

    :cond_1a
    move v3, v2

    .line 1111
    goto/16 :goto_1

    .line 1114
    :cond_1b
    if-eq v2, v6, :cond_1c

    move v3, v2

    goto/16 :goto_1

    .line 1116
    :cond_1c
    if-eq v0, v6, :cond_1d

    move v3, v0

    goto/16 :goto_1

    .line 1119
    :cond_1d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_1f

    const/4 v1, 0x0

    :cond_1e
    :goto_4
    move v3, v1

    .line 1127
    goto/16 :goto_1

    .line 1120
    :cond_1f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_20

    const/4 v1, 0x4

    goto :goto_4

    .line 1121
    :cond_20
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_21

    const/4 v1, 0x3

    goto :goto_4

    .line 1122
    :cond_21
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_22

    const/4 v1, 0x2

    goto :goto_4

    .line 1123
    :cond_22
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1232
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1235
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1238
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1236
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/16 v4, -0x19

    const/16 v3, -0x6c

    .line 1183
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1196
    .local v1, "tdScdmaDbm":I
    sget-boolean v2, Landroid/telephony/SignalStrength;->is5barSignal:Z

    if-eqz v2, :cond_7

    .line 1199
    if-gt v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    .line 1200
    :cond_0
    const/4 v0, 0x0

    .line 1223
    .local v0, "level":I
    :goto_0
    return v0

    .line 1201
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_2

    const/4 v0, 0x5

    .restart local v0    # "level":I
    goto :goto_0

    .line 1202
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x60

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1203
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x66

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1204
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x6a

    if-lt v1, v2, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1205
    .end local v0    # "level":I
    :cond_5
    if-lt v1, v3, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1206
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1211
    .end local v0    # "level":I
    :cond_7
    if-gt v1, v4, :cond_8

    if-ne v1, v5, :cond_9

    .line 1212
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1213
    .end local v0    # "level":I
    :cond_9
    const/16 v2, -0x55

    if-lt v1, v2, :cond_a

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1214
    .end local v0    # "level":I
    :cond_a
    const/16 v2, -0x5d

    if-lt v1, v2, :cond_b

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1215
    .end local v0    # "level":I
    :cond_b
    const/16 v2, -0x64

    if-lt v1, v2, :cond_c

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1216
    .end local v0    # "level":I
    :cond_c
    if-lt v1, v3, :cond_d

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1217
    .end local v0    # "level":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1246
    const/16 v0, 0x1f

    .line 1247
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 259
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 260
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 261
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 262
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 263
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 264
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 265
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 266
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 267
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 268
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 269
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 270
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 271
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 272
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 274
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 230
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 233
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1162
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 493
    return-void
.end method

.method public setWcdma(Z)V
    .locals 0
    .param p1, "wcdmaFlag"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    .line 503
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    if-eqz v0, :cond_1

    const-string v0, "WCDMA"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0

    :cond_1
    const-string v0, "2G"

    goto :goto_1
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 460
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 463
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 464
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 466
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 467
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 468
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 471
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 473
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 474
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 477
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 481
    return-void

    :cond_4
    move v0, v1

    .line 460
    goto :goto_0

    :cond_5
    move v0, v2

    .line 463
    goto :goto_1

    .line 464
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 467
    goto :goto_3

    :cond_8
    move v0, v4

    .line 472
    goto :goto_4

    :cond_9
    move v0, v4

    .line 473
    goto :goto_5

    :cond_a
    move v0, v4

    .line 474
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isWcdma:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    return-void

    :cond_0
    move v0, v2

    .line 420
    goto :goto_0

    :cond_1
    move v1, v2

    .line 421
    goto :goto_1
.end method
