.class Llenovo/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Llenovo/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Llenovo/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Llenovo/design/widget/TabLayout;Landroid/content/Context;Llenovo/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 1139
    iput-object p1, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    .line 1140
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1141
    iput-object p3, p0, Llenovo/design/widget/TabLayout$TabView;->mTab:Llenovo/design/widget/TabLayout$Tab;

    .line 1142
    # getter for: Llenovo/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$200(Llenovo/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    # getter for: Llenovo/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$200(Llenovo/design/widget/TabLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1145
    :cond_0
    # getter for: Llenovo/design/widget/TabLayout;->mTabPaddingStart:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$300(Llenovo/design/widget/TabLayout;)I

    move-result v0

    # getter for: Llenovo/design/widget/TabLayout;->mTabPaddingTop:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$400(Llenovo/design/widget/TabLayout;)I

    move-result v1

    # getter for: Llenovo/design/widget/TabLayout;->mTabPaddingEnd:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$500(Llenovo/design/widget/TabLayout;)I

    move-result v2

    # getter for: Llenovo/design/widget/TabLayout;->mTabPaddingBottom:I
    invoke-static {p1}, Llenovo/design/widget/TabLayout;->access$600(Llenovo/design/widget/TabLayout;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Llenovo/design/widget/TabLayout$TabView;->setPaddingRelative(IIII)V

    .line 1147
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1148
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->update()V

    .line 1149
    return-void
.end method

.method private updateTextAndIcon(Llenovo/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "iconView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1257
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1258
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1260
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 1261
    if-eqz v1, :cond_2

    .line 1262
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1269
    :goto_0
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1272
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 1273
    .local v0, "hasText":Z
    :goto_1
    if-eqz p2, :cond_1

    .line 1274
    if-eqz v0, :cond_4

    .line 1275
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1277
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1285
    :cond_1
    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1286
    invoke-virtual {p0, p0}, Llenovo/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1291
    :goto_3
    return-void

    .line 1266
    .end local v0    # "hasText":Z
    :cond_2
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1272
    goto :goto_1

    .line 1280
    .restart local v0    # "hasText":Z
    :cond_4
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1288
    :cond_5
    invoke-virtual {p0, v5}, Llenovo/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1289
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_3
.end method


# virtual methods
.method public getTab()Llenovo/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Llenovo/design/widget/TabLayout$TabView;->mTab:Llenovo/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1170
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1172
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1173
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1178
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1180
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1181
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1295
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 1296
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1298
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1299
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getWidth()I

    move-result v5

    .line 1300
    .local v5, "width":I
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getHeight()I

    move-result v2

    .line 1301
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1303
    .local v4, "screenWidth":I
    iget-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v6}, Llenovo/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1306
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1309
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1310
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1185
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1187
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v0

    .line 1188
    .local v0, "measuredWidth":I
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabMinWidth:I
    invoke-static {v1}, Llenovo/design/widget/TabLayout;->access$700(Llenovo/design/widget/TabLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabMaxWidth:I
    invoke-static {v1}, Llenovo/design/widget/TabLayout;->access$800(Llenovo/design/widget/TabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1190
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabMinWidth:I
    invoke-static {v1}, Llenovo/design/widget/TabLayout;->access$700(Llenovo/design/widget/TabLayout;)I

    move-result v1

    iget-object v2, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabMaxWidth:I
    invoke-static {v2}, Llenovo/design/widget/TabLayout;->access$800(Llenovo/design/widget/TabLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Llenovo/design/widget/MathUtils;->constrain(III)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1193
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1195
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 1153
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1154
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1155
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1156
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Llenovo/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1158
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1161
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1165
    :cond_1
    return-void

    .line 1153
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1198
    iget-object v3, p0, Llenovo/design/widget/TabLayout$TabView;->mTab:Llenovo/design/widget/TabLayout$Tab;

    .line 1199
    .local v3, "tab":Llenovo/design/widget/TabLayout$Tab;
    invoke-virtual {v3}, Llenovo/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1200
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 1201
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1202
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 1203
    if-eqz v1, :cond_0

    .line 1204
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1206
    :cond_0
    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1208
    :cond_1
    iput-object v0, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1209
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 1210
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1212
    :cond_2
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 1213
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1214
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1217
    :cond_3
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1218
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1229
    :goto_0
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_a

    .line 1231
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_4

    .line 1232
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x9040011

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1234
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v7}, Llenovo/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1235
    iput-object v2, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1237
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_4
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_5

    .line 1238
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x9040012

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1240
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Llenovo/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1241
    iput-object v4, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1243
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabTextAppearance:I
    invoke-static {v7}, Llenovo/design/widget/TabLayout;->access$900(Llenovo/design/widget/TabLayout;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1244
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v5}, Llenovo/design/widget/TabLayout;->access$1000(Llenovo/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1245
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Llenovo/design/widget/TabLayout;->access$1000(Llenovo/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1247
    :cond_6
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5, v6}, Llenovo/design/widget/TabLayout$TabView;->updateTextAndIcon(Llenovo/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1254
    :cond_7
    :goto_1
    return-void

    .line 1221
    :cond_8
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 1222
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v5}, Llenovo/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1223
    iput-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1225
    :cond_9
    iput-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1226
    iput-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_0

    .line 1250
    :cond_a
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_b

    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    .line 1251
    :cond_b
    iget-object v5, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v6, p0, Llenovo/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5, v6}, Llenovo/design/widget/TabLayout$TabView;->updateTextAndIcon(Llenovo/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
