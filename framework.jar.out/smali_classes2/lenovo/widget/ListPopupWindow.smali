.class public Llenovo/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ListPopupWindow$PopupScrollListener;,
        Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;,
        Llenovo/widget/ListPopupWindow$ResizePopupRunnable;,
        Llenovo/widget/ListPopupWindow$ListSelectorHider;,
        Llenovo/widget/ListPopupWindow$PopupDataSetObserver;,
        Llenovo/widget/ListPopupWindow$DropDownListView;,
        Llenovo/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Llenovo/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    .line 98
    iput v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 103
    iput v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    .line 105
    iput-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 106
    iput-boolean v3, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 107
    const v2, 0x7fffffff

    iput v2, p0, Llenovo/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 110
    iput v3, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    .line 121
    new-instance v2, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v4}, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    .line 122
    new-instance v2, Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v4}, Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 123
    new-instance v2, Llenovo/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v4}, Llenovo/widget/ListPopupWindow$PopupScrollListener;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

    .line 124
    new-instance v2, Llenovo/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v4}, Llenovo/widget/ListPopupWindow$ListSelectorHider;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

    .line 127
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 220
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 223
    sget-object v2, Lcom/lenovo/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 227
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 230
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v2, :cond_0

    .line 231
    iput-boolean v5, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    new-instance v2, Lcom/lenovo/internal/widget/AppCompatPopupWindow;

    invoke-direct {v2, p1, p2, p3}, Lcom/lenovo/internal/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 238
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 241
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 242
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iput v2, p0, Llenovo/widget/ListPopupWindow;->mLayoutDirection:I

    .line 243
    return-void
.end method

.method static synthetic access$1100(Llenovo/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 70
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 70
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Llenovo/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 70
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ListPopupWindow;

    .prologue
    .line 70
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 1045
    const/16 v17, 0x0

    .line 1047
    .local v17, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 1048
    move-object/from16 v0, p0

    iget-object v8, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1056
    .local v8, "context":Landroid/content/Context;
    new-instance v1, Llenovo/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Llenovo/widget/ListPopupWindow$2;-><init>(Llenovo/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Llenovo/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1066
    new-instance v3, Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1068
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Llenovo/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Llenovo/widget/ListPopupWindow$3;-><init>(Llenovo/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mScrollListener:Llenovo/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Llenovo/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1096
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 1098
    .local v9, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1099
    .local v13, "hintView":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1102
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1103
    .local v11, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1105
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1109
    .local v12, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1121
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1128
    .local v20, "widthSpec":I
    const/4 v10, 0x0

    .line 1129
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1131
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1132
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    .line 1135
    move-object v9, v11

    .line 1138
    .end local v10    # "heightSpec":I
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1152
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 1153
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1154
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v3

    .line 1160
    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 1161
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1168
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v14, 0x1

    .line 1170
    .local v14, "ignoreBottomDecorations":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v16

    .line 1173
    .local v16, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 1174
    :cond_5
    add-int v1, v16, v18

    .line 1202
    :goto_5
    return v1

    .line 1066
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "ignoreBottomDecorations":Z
    .end local v16    # "maxHeight":I
    .end local v18    # "padding":I
    .restart local v8    # "context":Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1111
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1116
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1140
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1141
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1142
    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1143
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1145
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    goto/16 :goto_2

    .line 1164
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 1168
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1178
    .restart local v14    # "ignoreBottomDecorations":Z
    .restart local v16    # "maxHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 1192
    move-object/from16 v0, p0

    iget v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1196
    .local v2, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Llenovo/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v15

    .line 1200
    .local v15, "listContent":I
    if-lez v15, :cond_b

    add-int v17, v17, v18

    .line 1202
    :cond_b
    add-int v1, v15, v17

    goto :goto_5

    .line 1180
    .end local v2    # "childWidthSpec":I
    .end local v15    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1184
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 1186
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Llenovo/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1190
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 1109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1178
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1803
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 684
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 686
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 687
    check-cast v0, Landroid/view/ViewGroup;

    .line 688
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 691
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 6
    .param p1, "clip"    # Z

    .prologue
    .line 1807
    sget-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1809
    :try_start_0
    sget-object v1, Llenovo/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 744
    .local v0, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 746
    const/4 v1, 0x1

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 748
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 750
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1029
    new-instance v0, Llenovo/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Llenovo/widget/ListPopupWindow$1;-><init>(Llenovo/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 668
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->removePromptView()V

    .line 669
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 670
    iput-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 671
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mResizePopupRunnable:Llenovo/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 817
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    const-wide/high16 v0, -0x8000000000000000L

    .line 820
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    const/4 v0, -0x1

    .line 807
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 830
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 866
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 872
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    invoke-static {p1}, Llenovo/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 875
    :cond_0
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 878
    .local v4, "curIndex":I
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 880
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 883
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 884
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 886
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 887
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 888
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 890
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 894
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 898
    :cond_3
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->clearListSelection()V

    .line 899
    iget-object v8, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 900
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 946
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 878
    goto :goto_0

    .line 888
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Llenovo/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 890
    :cond_6
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 905
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 908
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 911
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 914
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 919
    iget-object v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Llenovo/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 920
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 922
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 946
    goto :goto_3

    .line 932
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 935
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 938
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 922
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 984
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 988
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 989
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 990
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 991
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1005
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 994
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 995
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 996
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 997
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 999
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1000
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1005
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 960
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 961
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Llenovo/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 962
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Llenovo/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 969
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 775
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 777
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 778
    .local v1, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 779
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 780
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 782
    .end local v1    # "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 784
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 252
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 257
    :cond_0
    :goto_0
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 258
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    :cond_1
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    :cond_2
    return-void

    .line 254
    :cond_3
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 431
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 432
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 403
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 404
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 394
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 504
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 507
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0, p1}, Llenovo/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 337
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 477
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    .line 478
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 322
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 526
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    .line 527
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 447
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 448
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 706
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 707
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 851
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 852
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 378
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 379
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    .line 301
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 302
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 680
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 681
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 537
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 538
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 548
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 549
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 277
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mPromptPosition:I

    .line 278
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 558
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 559
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->removePromptView()V

    .line 562
    :cond_0
    iput-object p1, p0, Llenovo/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 563
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 566
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 725
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    .line 726
    .local v0, "list":Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 727
    const/4 v1, 0x0

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 728
    invoke-virtual {v0, p1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 730
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 731
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 736
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 359
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 360
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 466
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 468
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 494
    iput p1, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    .line 495
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 580
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 582
    .local v6, "height":I
    const/4 v4, 0x0

    .line 583
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 585
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 587
    .local v7, "noInputMethod":Z
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 588
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_2

    .line 591
    const/4 v4, -0x1

    .line 598
    :goto_0
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v0, :cond_8

    .line 601
    if-eqz v7, :cond_4

    move v5, v6

    .line 602
    :goto_1
    if-eqz v7, :cond_6

    .line 603
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v0, :cond_5

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 618
    :goto_3
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 620
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 661
    :cond_1
    :goto_4
    return-void

    .line 592
    :cond_2
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_3

    .line 593
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 595
    :cond_3
    iget v4, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_4
    move v5, v0

    .line 601
    goto :goto_1

    :cond_5
    move v0, v1

    .line 603
    goto :goto_2

    .line 607
    :cond_6
    iget-object v8, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_7

    move v2, v0

    :goto_5
    invoke-virtual {v8, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5

    .line 612
    :cond_8
    iget v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 613
    move v5, v6

    goto :goto_3

    .line 615
    :cond_9
    iget v5, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    .line 623
    :cond_a
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_d

    .line 624
    const/4 v4, -0x1

    .line 633
    :goto_6
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v0, :cond_f

    .line 634
    const/4 v5, -0x1

    .line 643
    :goto_7
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 644
    invoke-direct {p0, v3}, Llenovo/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 648
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Llenovo/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_11

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 649
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mTouchInterceptor:Llenovo/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 650
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Llenovo/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Llenovo/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v1, v2, v3, v8, v9}, Lcom/lenovo/internal/widget/ViewUtils;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 652
    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 654
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 655
    :cond_b
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->clearListSelection()V

    .line 657
    :cond_c
    iget-boolean v0, p0, Llenovo/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Llenovo/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow;->mHideSelector:Llenovo/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 626
    :cond_d
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v9, :cond_e

    .line 627
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    .line 629
    :cond_e
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    .line 636
    :cond_f
    iget v2, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v9, :cond_10

    .line 637
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_7

    .line 639
    :cond_10
    iget-object v2, p0, Llenovo/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Llenovo/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_7

    :cond_11
    move v3, v1

    .line 648
    goto :goto_8
.end method
