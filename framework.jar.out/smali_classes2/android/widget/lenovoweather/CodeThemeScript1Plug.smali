.class public Landroid/widget/lenovoweather/CodeThemeScript1Plug;
.super Landroid/widget/FrameLayout;
.source "CodeThemeScript1Plug.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CITY_CHANGE:Ljava/lang/String; = "com.lenovo.weather.action.CITY_CHANGE"

.field private static final ACTION_CURRENT_CONDITIONS_UPDATE:Ljava/lang/String; = "com.lenovo.weather.action.CURRENT_CONDITIONS_UPDATE"

.field private static final ACTION_DEF_CITY_CHANGE:Ljava/lang/String; = "com.lenovo.weather.action.DEF_CITY_CHANGE"

.field private static final ACTION_FORCAST_UPDATE:Ljava/lang/String; = "com.lenovo.weather.action.FORCAST_UPDATE"

.field private static final ACTION_LOCATION_CITY_CHANGE:Ljava/lang/String; = "com.lenovo.weather.action.LOCATION_CITY_CHANGE"

.field private static ACTION_SHOW_CALENDAR:Ljava/lang/String; = null

.field private static ACTION_SHOW_DESKCLOCK:Ljava/lang/String; = null

.field private static final ACTION_TEMPERATURE_UNIT_CHANGE:Ljava/lang/String; = "com.lenovo.weather.action.TEMPERATURE_UNIT_CHANGE"

.field private static final ACTION_WEATHER_INFO_PAGE_VIEW_CACHE_UPDATE:Ljava/lang/String; = "com.lenovo.weather.action.WEATHER_INFO_PAGE_VIEW_CACHE_UPDATE"

.field private static final CONTENT_URI:Ljava/lang/String; = "content://com.lenovo.themecenter.fileprovider/res/"

.field static final DATA_TAG_KEY:I = 0x7f080001

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "CodeThemeScript1Plug"

.field private static Path:Ljava/lang/String; = null

.field private static Path_hdpi:Ljava/lang/String; = null

.field private static Path_xhdpi:Ljava/lang/String; = null

.field private static Path_xxhdpi:Ljava/lang/String; = null

.field private static Path_xxxhdpi:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TYPE_CITY_CHANGE:I = 0x1

.field private static final TYPE_CURRENT_CONDITIONS_UPDATE:I = 0x6

.field private static final TYPE_DEF_CITY_CHANGE:I = 0x2

.field private static final TYPE_FORCAST_UPDATE:I = 0x0

.field private static final TYPE_LOCATION_CITY_CHANGE:I = 0x3

.field private static final TYPE_TEMPERATURE_UNIT_CHANGE:I = 0x4

.field private static final TYPE_WEATHER_INFO_PAGE_VIEW_CACHE_UPDATE:I = 0x5

.field private static final XML_FILE_NAME:Ljava/lang/String; = "weatherconfig.xml"

.field private static final XML_FILE_SIZE_MAX:I = 0x100000

.field private static final ZIP_THEME_FILE_DIR:Ljava/lang/String;

.field private static final ZIP_THEME_ROOT_DIR:Ljava/lang/String;

.field private static cityName:Ljava/lang/String;

.field private static mDataPath:Ljava/lang/String;

.field private static weatheimgIndex1:I

.field private static weatherDescription:Ljava/lang/String;

.field private static weatherTemperature:Ljava/lang/String;

.field private static week:Ljava/lang/String;


# instance fields
.field DateAndWeeklistener:Landroid/view/View$OnClickListener;

.field Timelistener:Landroid/view/View$OnClickListener;

.field Weatherlistener:Landroid/view/View$OnClickListener;

.field private mAnimator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Base;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorMechanismRunnable:Ljava/lang/Runnable;

.field private mApp:Landroid/content/Context;

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDrawItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Base;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_AmPm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_AmPm;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Animator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Hour1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Hour1;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Hour10:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Hour10;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Min1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Min1;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Min10:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Min10;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Image_Weather:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Weather;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Animator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Date:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Date;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Event:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Event;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_TemperatureUnit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_TemperatureUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Temperature_Break:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Temperature_Max:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Max;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Temperature_Min:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_WeatherCity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_WeatherDescription:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_WeatherTemperature:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Text_Week:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Week;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawItem_Weather_Background:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;",
            ">;"
        }
    .end annotation
.end field

.field private mForce:Z

.field private mFrameInterval:I

.field mFrameRate:I

.field private mH:I

.field private mHandler:Landroid/os/Handler;

.field private mIconPath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLanguage:Ljava/lang/String;

.field private mLocale:Ljava/util/Locale;

.field mPath:Ljava/lang/String;

.field private mPlugView:Landroid/widget/FrameLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mScreen:Landroid/widget/lenovoweather/DrawItem_Screen;

.field private mScreenView:Landroid/view/ViewGroup;

.field private mShow:Z

.field private mTextColorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/TranslateItem_Base;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucent:Z

.field mTypeface:Landroid/graphics/Typeface;

.field mUnlockAnimatorSpeed:F

.field private mUnlockDitherThreshold:F

.field mUnlockDitherThreshold2:F

.field mUnlockValidDistanceThreshold:F

.field mUnlockValidDistanceThreshold2:F

.field private mUnlockValidVelocityThreshold:F

.field mUnlockValidVelocityThreshold2:F

.field private mVersion:I

.field private mW:I

.field mWindowH:I

.field mWindowW:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "com.lenovo.acwea.action.launchCalendar"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ACTION_SHOW_CALENDAR:Ljava/lang/String;

    .line 79
    const-string v0, "com.lenovo.weather.action.launchDeskclock"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ACTION_SHOW_DESKCLOCK:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".LenovoTheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themefolder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ZIP_THEME_ROOT_DIR:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ZIP_THEME_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ZIP_THEME_FILE_DIR:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->cityName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherTemperature:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatheimgIndex1:I

    .line 90
    const-string v0, ""

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherDescription:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->week:Ljava/lang/String;

    .line 105
    const-string v0, "/data/data/"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDataPath:Ljava/lang/String;

    .line 215
    const-string v0, "CodeThemeScript1Plug"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->TAG:Ljava/lang/String;

    .line 261
    const-string v0, "drawable-xhdpi"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xhdpi:Ljava/lang/String;

    .line 262
    const-string v0, "drawable-hdpi"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_hdpi:Ljava/lang/String;

    .line 263
    const-string v0, "drawable-xxhdpi"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxhdpi:Ljava/lang/String;

    .line 264
    const-string v0, "drawable-xxxhdpi"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxxhdpi:Ljava/lang/String;

    .line 265
    const-string v0, "/data/data/com.lenovo.launcher/files"

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    invoke-virtual {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    .line 240
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodeThemeScript1View Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodeThemeScript1View Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AttributeSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTextColorCache:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Animator:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Animator:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Event:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimator:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTranslateItem:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_TemperatureUnit:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Date:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherCity:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherDescription:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherTemperature:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Week:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour10:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour1:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min10:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min1:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Weather:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Weather_Background:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Break:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Min:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Max:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    .line 221
    new-instance v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;

    invoke-direct {v0, p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimatorMechanismRunnable:Ljava/lang/Runnable;

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1270
    new-instance v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$2;

    invoke-direct {v0, p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$2;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Timelistener:Landroid/view/View$OnClickListener;

    .line 1279
    new-instance v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$3;

    invoke-direct {v0, p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$3;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->DateAndWeeklistener:Landroid/view/View$OnClickListener;

    .line 1288
    new-instance v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;

    invoke-direct {v0, p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Weatherlistener:Landroid/view/View$OnClickListener;

    .line 256
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodeThemeScript1View+ Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AttributeSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimatorMechanismRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mFrameInterval:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->timeChange()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->updateWeatherContent()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ACTION_SHOW_DESKCLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ACTION_SHOW_CALENDAR:Ljava/lang/String;

    return-object v0
.end method

.method private configurationChange()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1034
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    const-string v5, "CodeThemeScript1Plug"

    const-string v8, "configurationChange"

    new-array v9, v12, [Ljava/lang/String;

    invoke-static {v5, v8, v9}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1037
    :cond_0
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLocale:Ljava/util/Locale;

    .line 1038
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    .line 1039
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-r"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    .line 1043
    :cond_1
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1044
    const-string v5, "CodeThemeScript1Plug"

    const-string v8, "configurationChange"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "language "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v5, v8, v9}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1047
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1049
    .local v6, "now":J
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text;

    .line 1050
    .local v1, "drawItem_Text":Landroid/widget/lenovoweather/DrawItem_Text;
    invoke-virtual {v1, p0}, Landroid/widget/lenovoweather/DrawItem_Text;->translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    goto :goto_0

    .line 1053
    .end local v1    # "drawItem_Text":Landroid/widget/lenovoweather/DrawItem_Text;
    :cond_3
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Animator:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    .line 1054
    .local v2, "drawItem_Text_Animator":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    invoke-virtual {v2, p0, v6, v7}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;J)V

    goto :goto_1

    .line 1057
    .end local v2    # "drawItem_Text_Animator":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    :cond_4
    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Event:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/lenovoweather/DrawItem_Text_Event;

    .line 1058
    .local v3, "drawItem_Text_Event":Landroid/widget/lenovoweather/DrawItem_Text_Event;
    invoke-virtual {v3, p0}, Landroid/widget/lenovoweather/DrawItem_Text_Event;->translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    goto :goto_2

    .line 1060
    .end local v3    # "drawItem_Text_Event":Landroid/widget/lenovoweather/DrawItem_Text_Event;
    :cond_5
    return-void
.end method

.method private create()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 313
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "create"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getZipThemeConfigFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPath:Ljava/lang/String;

    .line 316
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIconPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 317
    sget-object v2, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxhdpi:Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIconPath:Ljava/lang/String;

    .line 320
    :cond_1
    const-string v2, "CodeThemeScript1Plug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mIconPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIconPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->removeAllViews()V

    .line 323
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mResources:Landroid/content/res/Resources;

    .line 324
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mInflater:Landroid/view/LayoutInflater;

    .line 325
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090018

    invoke-virtual {v2, v3, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    .line 329
    const-string v2, "CodeThemeScript1Plug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlugView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, "successLoadData":Z
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 332
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    const v3, 0x102003d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreenView:Landroid/view/ViewGroup;

    .line 346
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->configurationChange()V

    .line 348
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->loadData()Z

    move-result v8

    .line 350
    if-eqz v8, :cond_4

    .line 354
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base;

    .line 355
    .local v0, "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    if-eqz v0, :cond_2

    .line 356
    const-string v2, "widgetkkk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawItem_Base:type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "CodeThemeScript1Plug.DATA_TAG_KEY = 2131230721"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreenView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    goto :goto_0

    .line 365
    .end local v0    # "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    :cond_3
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "createPlugView"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 369
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    if-eqz v8, :cond_5

    .line 370
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->addView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    .line 378
    :goto_1
    return-object v1

    .line 373
    :cond_5
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "NO weather resource in Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->onDestroy()V

    goto :goto_1
.end method

.method private deinitDrawItemClassList()V
    .locals 3

    .prologue
    .line 860
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "deinitDrawItemClassList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 863
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Animator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Animator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Date:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Week:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 868
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherTemperature:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherDescription:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour10:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min10:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    return-void
.end method

.method private getZipThemeConfigFileDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 273
    .local v4, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    const-string v7, "CodeThemeScript1Plug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDisplayMetrics:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 276
    .local v0, "density":F
    sget-object v6, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxhdpi:Ljava/lang/String;

    .line 277
    .local v6, "tempdir":Ljava/lang/String;
    const-string v7, "CodeThemeScript1Plug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tempdir:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object v1, v6

    .line 280
    .local v1, "dir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 281
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://com.lenovo.themecenter.fileprovider/res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "weatherconfig.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 283
    .local v5, "tempUri":Landroid/net/Uri;
    :try_start_0
    iget-object v7, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_1

    .line 286
    cmpg-float v7, v0, v10

    if-gtz v7, :cond_3

    .line 287
    sget-object v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_hdpi:Ljava/lang/String;

    .line 295
    :cond_0
    :goto_0
    sget-object v7, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxhdpi:Ljava/lang/String;

    iput-object v7, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    if-eqz v3, :cond_2

    .line 302
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    const/4 v3, 0x0

    .line 309
    :cond_2
    :goto_1
    return-object v1

    .line 288
    :cond_3
    cmpl-float v7, v0, v10

    if-lez v7, :cond_4

    cmpg-float v7, v0, v11

    if-gtz v7, :cond_4

    .line 289
    :try_start_2
    sget-object v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xhdpi:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_4
    cmpl-float v7, v0, v11

    if-lez v7, :cond_5

    float-to-double v8, v0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_5

    .line 291
    sget-object v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxhdpi:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_5
    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 293
    sget-object v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->Path_xxxhdpi:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 298
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    if-eqz v3, :cond_2

    .line 302
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 303
    const/4 v3, 0x0

    goto :goto_1

    .line 304
    :catch_2
    move-exception v2

    .line 305
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_6

    .line 302
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 303
    const/4 v3, 0x0

    .line 306
    :cond_6
    :goto_2
    throw v7

    .line 304
    :catch_3
    move-exception v2

    .line 305
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadData()Z
    .locals 20

    .prologue
    .line 383
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 384
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 398
    .local v3, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 400
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 404
    :goto_0
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 405
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "documentBuilder "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 407
    :cond_1
    if-nez v2, :cond_2

    .line 408
    const/4 v14, 0x0

    .line 762
    :goto_1
    return v14

    .line 401
    :catch_0
    move-exception v4

    .line 402
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_2
    const/4 v7, 0x0

    .line 426
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 427
    .local v1, "document":Lorg/w3c/dom/Document;
    const/4 v5, 0x0

    .line 428
    .local v5, "element":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .line 429
    .local v9, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    const/4 v11, 0x0

    .line 431
    .local v11, "nodeList":Lorg/w3c/dom/NodeList;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "content://com.lenovo.themecenter.fileprovider/res/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "weatherconfig.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 433
    .local v13, "weatherConfigUri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 435
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 436
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "inputStream "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_3
    if-eqz v7, :cond_4

    .line 440
    :try_start_2
    invoke-virtual {v2, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 448
    :cond_4
    :goto_2
    :try_start_3
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 449
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "document "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 451
    :cond_5
    if-eqz v1, :cond_6

    .line 453
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 456
    :cond_6
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 457
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "element "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    :cond_7
    if-eqz v5, :cond_8

    .line 459
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 461
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 465
    :cond_8
    new-instance v14, Landroid/widget/lenovoweather/DrawItem_Screen;

    invoke-direct {v14}, Landroid/widget/lenovoweather/DrawItem_Screen;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreen:Landroid/widget/lenovoweather/DrawItem_Screen;

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreen:Landroid/widget/lenovoweather/DrawItem_Screen;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 472
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "namedNodeMap "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    :cond_9
    if-eqz v9, :cond_d

    .line 475
    const/4 v10, 0x0

    .line 476
    .local v10, "node":Lorg/w3c/dom/Node;
    const/4 v12, 0x0

    .line 479
    .local v12, "value":Ljava/lang/String;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mVersion:I

    .line 480
    const-string v14, "version"

    invoke-interface {v9, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 482
    if-eqz v10, :cond_a

    .line 483
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 484
    if-eqz v12, :cond_a

    .line 486
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mVersion:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    :cond_a
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mVersion:I

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mVersion:I

    .line 497
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mW:I

    .line 498
    const-string v14, "w"

    invoke-interface {v9, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 499
    if-eqz v10, :cond_b

    .line 500
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .line 501
    if-eqz v12, :cond_b

    .line 503
    :try_start_6
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mW:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 509
    :cond_b
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mW:I

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mW:I

    .line 512
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mH:I

    .line 513
    const-string v14, "h"

    invoke-interface {v9, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 514
    if-eqz v10, :cond_c

    .line 515
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v12

    .line 516
    if-eqz v12, :cond_c

    .line 518
    :try_start_8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mH:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 524
    :cond_c
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mH:I

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mH:I

    .line 528
    .end local v10    # "node":Lorg/w3c/dom/Node;
    .end local v12    # "value":Ljava/lang/String;
    :cond_d
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_E:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 529
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "nodeList "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 531
    :cond_e
    if-eqz v11, :cond_40

    .line 532
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v6, v14, :cond_40

    .line 533
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 534
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    const-string v14, "Translate"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 535
    new-instance v8, Landroid/widget/lenovoweather/TranslateItem_Base;

    invoke-direct {v8}, Landroid/widget/lenovoweather/TranslateItem_Base;-><init>()V

    .line 536
    .local v8, "item":Landroid/widget/lenovoweather/TranslateItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/TranslateItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTranslateItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v8    # "item":Landroid/widget/lenovoweather/TranslateItem_Base;
    :cond_f
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 441
    .end local v6    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v4

    .line 442
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 749
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 750
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 752
    if-eqz v7, :cond_10

    .line 754
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 755
    const/4 v7, 0x0

    .line 762
    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    :goto_8
    if-eqz v1, :cond_41

    if-eqz v5, :cond_41

    if-eqz v9, :cond_41

    if-eqz v11, :cond_41

    const/4 v14, 0x1

    goto/16 :goto_1

    .line 443
    :catch_3
    move-exception v4

    .line 444
    .local v4, "e":Lorg/xml/sax/SAXException;
    :try_start_c
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 752
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v14

    if-eqz v7, :cond_11

    .line 754
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 755
    const/4 v7, 0x0

    .line 758
    :cond_11
    :goto_9
    throw v14

    .line 487
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    .restart local v12    # "value":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 488
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 504
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v4

    .line 505
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_4

    .line 519
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v4

    .line 520
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_5

    .line 539
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "value":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_12
    const-string v14, "Screen"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreen:Landroid/widget/lenovoweather/DrawItem_Screen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Screen;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    goto :goto_7

    .line 542
    :cond_13
    const/4 v8, 0x0

    .line 544
    .local v8, "item":Landroid/widget/lenovoweather/DrawItem_Base;
    const-string v14, "Image"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 545
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image;-><init>()V

    .line 546
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 737
    :cond_14
    :goto_a
    if-eqz v8, :cond_f

    .line 738
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v14, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 740
    const-string v14, "CodeThemeScript1Plug"

    const-string v15, "loadData"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "String "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/widget/lenovoweather/DrawItem_Base;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 742
    :cond_15
    iget-object v14, v8, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 548
    :cond_16
    const/4 v8, 0x0

    goto :goto_a

    .line 550
    :cond_17
    const-string v14, "ImageEvent"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 552
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Event;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Event;-><init>()V

    .line 553
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 555
    const/4 v8, 0x0

    goto :goto_a

    .line 557
    :cond_18
    const-string v14, "TextEvent"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 559
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Event;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Event;-><init>()V

    .line 560
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Event:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Event;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 564
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 566
    :cond_1a
    const-string v14, "ImageAnimator"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 568
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Animator;-><init>()V

    .line 569
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 570
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Animator:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 573
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 575
    :cond_1c
    const-string v14, "TextAnimator"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 577
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;-><init>()V

    .line 578
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Animator:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 582
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 584
    :cond_1e
    const-string v14, "Text"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 586
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text;-><init>()V

    .line 587
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 588
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 590
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 592
    :cond_20
    const-string v14, "TextDate"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 594
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Date;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Date;-><init>()V

    .line 595
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 596
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Date:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Date;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 599
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 601
    :cond_22
    const-string v14, "TextWeatherCity"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 603
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;-><init>()V

    .line 604
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherCity:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 608
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 610
    :cond_24
    const-string v14, "TextWeatherTemperature"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 612
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;-><init>()V

    .line 613
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherTemperature:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 617
    :cond_25
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 619
    :cond_26
    const-string v14, "TextWeatherDescription"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 621
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;-><init>()V

    .line 622
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherDescription:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 626
    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 628
    :cond_28
    const-string v14, "TextWeek"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 630
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Week;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Week;-><init>()V

    .line 631
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 632
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Week:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Week;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 635
    :cond_29
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 637
    :cond_2a
    const-string v14, "ImageAmPm"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 639
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;-><init>()V

    .line 640
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 641
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 644
    :cond_2b
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 646
    :cond_2c
    const-string v14, "ImageHour10"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 648
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;-><init>()V

    .line 649
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour10:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 653
    :cond_2d
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 655
    :cond_2e
    const-string v14, "ImageHour1"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    .line 657
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;-><init>()V

    .line 658
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 659
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour1:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 662
    :cond_2f
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 664
    :cond_30
    const-string v14, "ImageMin10"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    .line 666
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Min10;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Min10;-><init>()V

    .line 667
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min10:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Min10;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 671
    :cond_31
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 673
    :cond_32
    const-string v14, "ImageMin1"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 675
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Min1;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Min1;-><init>()V

    .line 676
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min1:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Min1;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 680
    :cond_33
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 682
    :cond_34
    const-string v14, "ImageWeather"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 684
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Weather;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Weather;-><init>()V

    .line 685
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 686
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Weather:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Weather;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 689
    :cond_35
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 691
    :cond_36
    const-string v14, "TemperatureUnit"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_38

    .line 693
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_TemperatureUnit;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_TemperatureUnit;-><init>()V

    .line 694
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_TemperatureUnit:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_TemperatureUnit;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 698
    :cond_37
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 700
    :cond_38
    const-string v14, "ImageWeatherBackground"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 702
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;-><init>()V

    .line 703
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_39

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Weather_Background:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 707
    :cond_39
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 709
    :cond_3a
    const-string v14, "TemperatureBreak"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 711
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;-><init>()V

    .line 712
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 713
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Break:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 716
    :cond_3b
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 718
    :cond_3c
    const-string v14, "TemperatureMin"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 720
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;-><init>()V

    .line 721
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Min:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 725
    :cond_3d
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 727
    :cond_3e
    const-string v14, "TemperatureMax"

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 729
    new-instance v8, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Max;

    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-direct {v8}, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Max;-><init>()V

    .line 730
    .restart local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_3f

    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Temperature_Max:Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Max;

    move-object v14, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_a

    .line 734
    :cond_3f
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 752
    .end local v6    # "i":I
    .end local v8    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    .end local v10    # "node":Lorg/w3c/dom/Node;
    :cond_40
    if-eqz v7, :cond_10

    .line 754
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 755
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 756
    :catch_7
    move-exception v4

    .line 757
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 756
    :catch_8
    move-exception v4

    .line 757
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 756
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 757
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 762
    .end local v4    # "e":Ljava/io/IOException;
    :cond_41
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private recycleBitmap()V
    .locals 5

    .prologue
    .line 848
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "recycleBitmap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 851
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 852
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 853
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 856
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method private registerWeatherIntentReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1221
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 1222
    new-instance v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;)V

    iput-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1224
    .local v0, "eventFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1226
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1227
    const-string v1, "com.lenovo.weather.action.DEF_CITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1228
    const-string v1, "com.lenovo.weather.action.FORCAST_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string v1, "com.lenovo.weather.action.TEMPERATURE_UNIT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v1, "com.lenovo.weather.action.CURRENT_CONDITIONS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1236
    .end local v0    # "eventFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    const-string v1, "CodeThemeScript1Plug"

    const-string v2, "register mIntentReceiver not null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private timeChange()V
    .locals 20

    .prologue
    .line 880
    sget-object v17, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 881
    const-string v17, "CodeThemeScript1Plug"

    const-string v18, "timeChange"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 883
    :cond_0
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 884
    .local v16, "time":Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 885
    move-object/from16 v0, v16

    iget v5, v0, Landroid/text/format/Time;->weekDay:I

    .line 887
    .local v5, "dayOfWeek":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 889
    .local v2, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 890
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 891
    .local v7, "hour":I
    if-nez v7, :cond_1

    .line 892
    const/16 v7, 0xc

    .line 897
    :cond_1
    :goto_0
    div-int/lit8 v9, v7, 0xa

    .line 898
    .local v9, "hour10":I
    rem-int/lit8 v8, v7, 0xa

    .line 899
    .local v8, "hour1":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v17, v0

    div-int/lit8 v15, v17, 0xa

    .line 900
    .local v15, "minute10":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v17, v0

    rem-int/lit8 v14, v17, 0xa

    .line 903
    .local v14, "minute1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLocale:Ljava/util/Locale;

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "currentLanguage":Ljava/lang/String;
    const-string v17, "AR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 906
    .local v11, "isAr":Z
    const-string v17, "FA"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    .line 912
    .local v12, "isFa":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 915
    .local v6, "df":Ljava/text/DateFormat;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 917
    .local v4, "date":Ljava/lang/String;
    const-string v17, "CodeThemeScript1Plug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " date:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour10:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;

    .line 920
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour10;
    if-eqz v11, :cond_3

    .line 921
    add-int/lit8 v17, v9, 0xa

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;->updateContent(II)V

    goto :goto_1

    .line 895
    .end local v3    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "date":Ljava/lang/String;
    .end local v6    # "df":Ljava/text/DateFormat;
    .end local v7    # "hour":I
    .end local v8    # "hour1":I
    .end local v9    # "hour10":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isAr":Z
    .end local v12    # "isFa":Z
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour10;
    .end local v14    # "minute1":I
    .end local v15    # "minute10":I
    :cond_2
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .restart local v7    # "hour":I
    goto/16 :goto_0

    .line 922
    .restart local v3    # "currentLanguage":Ljava/lang/String;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v6    # "df":Ljava/text/DateFormat;
    .restart local v8    # "hour1":I
    .restart local v9    # "hour10":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "isAr":Z
    .restart local v12    # "isFa":Z
    .restart local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour10;
    .restart local v14    # "minute1":I
    .restart local v15    # "minute10":I
    :cond_3
    if-eqz v12, :cond_4

    .line 923
    add-int/lit8 v17, v9, 0x14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;->updateContent(II)V

    goto :goto_1

    .line 925
    :cond_4
    invoke-virtual {v13, v9}, Landroid/widget/lenovoweather/DrawItem_Image_Hour10;->updateContent(I)V

    goto :goto_1

    .line 929
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour10;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Hour1:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;

    .line 930
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour1;
    if-eqz v11, :cond_6

    .line 931
    add-int/lit8 v17, v8, 0xa

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;->updateContent(II)V

    goto :goto_2

    .line 932
    :cond_6
    if-eqz v12, :cond_7

    .line 933
    add-int/lit8 v17, v8, 0x14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;->updateContent(II)V

    goto :goto_2

    .line 935
    :cond_7
    invoke-virtual {v13, v8}, Landroid/widget/lenovoweather/DrawItem_Image_Hour1;->updateContent(I)V

    goto :goto_2

    .line 939
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Hour1;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min10:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_Min10;

    .line 940
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Image_Min10;
    if-eqz v11, :cond_9

    .line 941
    add-int/lit8 v17, v15, 0xa

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Min10;->updateContent(II)V

    goto :goto_3

    .line 942
    :cond_9
    if-eqz v12, :cond_a

    .line 943
    add-int/lit8 v17, v15, 0x14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Min10;->updateContent(II)V

    goto :goto_3

    .line 945
    :cond_a
    invoke-virtual {v13, v15}, Landroid/widget/lenovoweather/DrawItem_Image_Min10;->updateContent(I)V

    goto :goto_3

    .line 949
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Min10;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Min1:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_Min1;

    .line 950
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Image_Min1;
    if-eqz v11, :cond_c

    .line 951
    add-int/lit8 v17, v14, 0xa

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Min1;->updateContent(II)V

    goto :goto_4

    .line 952
    :cond_c
    if-eqz v12, :cond_d

    .line 953
    add-int/lit8 v17, v14, 0x14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Min1;->updateContent(II)V

    goto :goto_4

    .line 955
    :cond_d
    invoke-virtual {v13, v14}, Landroid/widget/lenovoweather/DrawItem_Image_Min1;->updateContent(I)V

    goto :goto_4

    .line 959
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Min1;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Date:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Text;

    .line 960
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Text;
    invoke-virtual {v13, v4}, Landroid/widget/lenovoweather/DrawItem_Text;->updateContent(Ljava/lang/String;)V

    goto :goto_5

    .line 963
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Text;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Week:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Text;

    .line 964
    .restart local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Text;
    sget-object v17, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->week:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/lenovoweather/DrawItem_Text;->updateContent(Ljava/lang/String;)V

    goto :goto_6

    .line 968
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Text;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 969
    const-string v17, "QING"

    const-string v18, "is Show AM PM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;

    .line 972
    .local v13, "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;->updateContent(I)V

    goto :goto_7

    .line 975
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;

    .line 976
    .restart local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;->updateContent(I)V

    goto :goto_8

    .line 980
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_AmPm:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;

    .line 981
    .restart local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;->updateContent(I)V

    goto :goto_9

    .line 985
    .end local v13    # "item":Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
    :cond_13
    return-void
.end method

.method private unregisterWeatherIntentReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1242
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "unregisterWeatherIntentReceiver"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1245
    :cond_0
    return-void
.end method

.method private updateWeatherContent()V
    .locals 5

    .prologue
    .line 1013
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "updateWeatherContent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1016
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherCity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;

    .line 1017
    .local v1, "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;
    sget-object v2, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;->updateContent(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherCity;
    :cond_1
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherTemperature:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;

    .line 1021
    .local v1, "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;
    sget-object v2, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherTemperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;->updateContent(Ljava/lang/String;)V

    goto :goto_1

    .line 1024
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherTemperature;
    :cond_2
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Weather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Image_Weather;

    .line 1025
    .local v1, "item":Landroid/widget/lenovoweather/DrawItem_Image_Weather;
    sget v2, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatheimgIndex1:I

    invoke-virtual {v1, v2}, Landroid/widget/lenovoweather/DrawItem_Image_Weather;->updateContent(I)V

    goto :goto_2

    .line 1028
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Weather;
    :cond_3
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_WeatherDescription:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;

    .line 1029
    .local v1, "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;
    sget-object v2, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;->updateContent(Ljava/lang/String;)V

    goto :goto_3

    .line 1031
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Text_WeatherDescription;
    :cond_4
    return-void
.end method


# virtual methods
.method public SetWeatherData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 989
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "SetWeatherContent start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v0, "cityName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->cityName:Ljava/lang/String;

    .line 991
    const-string v0, "weatherTemperature"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherTemperature:Ljava/lang/String;

    .line 993
    const-string v0, "weatheimgIndex1"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatheimgIndex1:I

    .line 995
    const-string v0, "weatherDescription"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->weatherDescription:Ljava/lang/String;

    .line 997
    const-string v0, "week"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->week:Ljava/lang/String;

    .line 999
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cityName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cityName"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weatherTemperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weatherTemperature"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weatheimgIndex1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weatheimgIndex1"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weatherDescription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weatherDescription"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v0, "CodeThemeScript1Plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "week = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "week"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "SetWeatherContent end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 768
    sget-object v3, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    const-string v3, "CodeThemeScript1Plug"

    const-string v4, "getBitmap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 771
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 772
    const/4 v0, 0x0

    .line 807
    :cond_1
    :goto_0
    return-object v0

    .line 775
    :cond_2
    const/4 v0, 0x0

    .line 777
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 778
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 781
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-nez v0, :cond_1

    .line 782
    const/4 v2, 0x0

    .line 784
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.lenovo.themecenter.fileprovider/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mIconPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 786
    if-eqz v2, :cond_4

    .line 787
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 792
    :cond_4
    if-eqz v2, :cond_5

    .line 794
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 795
    const/4 v2, 0x0

    .line 802
    :cond_5
    :goto_1
    if-eqz v0, :cond_1

    .line 803
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 789
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 790
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    if-eqz v2, :cond_5

    .line 794
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 795
    const/4 v2, 0x0

    goto :goto_1

    .line 796
    :catch_2
    move-exception v1

    .line 797
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    .line 794
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 795
    const/4 v2, 0x0

    .line 798
    :cond_6
    :goto_2
    throw v3

    .line 796
    :catch_3
    move-exception v1

    .line 797
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method getEventDispatch(Ljava/lang/String;)Landroid/widget/lenovoweather/EventDispatch_Base;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1101
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "getEventDispatch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1104
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_1
    return-object v6
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1206
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->create()Landroid/view/View;

    .line 1208
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->timeChange()V

    .line 1209
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->updateWeatherContent()V

    .line 1210
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->registerWeatherIntentReceiver(Landroid/content/Context;)V

    .line 1211
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 811
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "onDestroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 814
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base;

    .line 815
    .local v0, "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    if-eqz v0, :cond_1

    .line 816
    iput-object v5, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    goto :goto_0

    .line 819
    .end local v0    # "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    :cond_2
    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mPlugView:Landroid/widget/FrameLayout;

    .line 821
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->recycleBitmap()V

    .line 823
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 824
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 825
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 827
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTranslateItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 828
    invoke-direct {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->deinitDrawItemClassList()V

    .line 829
    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mScreen:Landroid/widget/lenovoweather/DrawItem_Screen;

    .line 830
    iput-object v5, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTypeface:Landroid/graphics/Typeface;

    .line 839
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1215
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->unregisterWeatherIntentReceiver(Landroid/content/Context;)V

    .line 1217
    invoke-virtual {p0}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->onDestroy()V

    .line 1218
    return-void
.end method

.method protected onThemeChanged()V
    .locals 3

    .prologue
    .line 842
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "onThemeChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 844
    :cond_0
    return-void
.end method

.method switchAnimatorMechanism(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    .line 1064
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const-string v0, "CodeThemeScript1Plug"

    const-string v1, "mechanism"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boolean "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1067
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimatorMechanismRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1068
    if-eqz p1, :cond_1

    .line 1069
    iget-object v0, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimatorMechanismRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1071
    :cond_1
    return-void
.end method

.method translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1178
    sget-object v3, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    const-string v3, "CodeThemeScript1Plug"

    const-string v4, "translate"

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1181
    :cond_0
    const/4 v2, 0x0

    .line 1183
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1185
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTranslateItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/TranslateItem_Base;

    .line 1186
    .local v1, "item":Landroid/widget/lenovoweather/TranslateItem_Base;
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, v9}, Landroid/widget/lenovoweather/TranslateItem_Base;->translate(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1187
    if-eqz v2, :cond_1

    move-object p1, v2

    .line 1199
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/widget/lenovoweather/TranslateItem_Base;
    .end local p1    # "src":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p1

    .line 1191
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local p1    # "src":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTranslateItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/TranslateItem_Base;

    .line 1192
    .restart local v1    # "item":Landroid/widget/lenovoweather/TranslateItem_Base;
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, v8}, Landroid/widget/lenovoweather/TranslateItem_Base;->translate(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1193
    if-eqz v2, :cond_4

    move-object p1, v2

    .line 1194
    goto :goto_0
.end method

.method updateAnimator(J)V
    .locals 11
    .param p1, "now"    # J

    .prologue
    .line 1089
    sget-object v4, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1090
    const-string v4, "CodeThemeScript1Plug"

    const-string v5, "updateAnimator"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1092
    :cond_0
    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Base;

    .line 1093
    .local v1, "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    iget-object v4, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .line 1094
    .local v0, "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    invoke-virtual {v0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->update(J)V

    goto :goto_0

    .line 1097
    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .end local v1    # "drawItem_Base":Landroid/widget/lenovoweather/DrawItem_Base;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method updateFrameAnimator(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    .line 1075
    sget-object v3, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    const-string v3, "CodeThemeScript1Plug"

    const-string v4, "updateFrameAnimator"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "long "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1078
    :cond_0
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Image_Animator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    .line 1079
    .local v0, "drawItem_Image_Animator":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    invoke-virtual {v0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->update(J)V

    goto :goto_0

    .line 1082
    .end local v0    # "drawItem_Image_Animator":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mDrawItem_Text_Animator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    .line 1083
    .local v1, "drawItem_Text_Animator":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    invoke-virtual {v1, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->update(J)V

    goto :goto_1

    .line 1085
    .end local v1    # "drawItem_Text_Animator":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    :cond_2
    return-void
.end method
