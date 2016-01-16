.class final Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsPayment:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 198
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 200
    invoke-virtual {p1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 201
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    .line 202
    const-string v1, "payment"

    # getter for: Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->access$000(Lcom/android/nfc/cardemulation/AppChooserActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    .line 203
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 204
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    invoke-virtual {v2, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 206
    :cond_0
    invoke-virtual {v2, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 207
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 208
    .local v5, "banner":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v2, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    if-nez v5, :cond_1

    .line 211
    const-string v1, "AppChooserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not showing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because no banner specified."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 216
    .local v0, "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v0    # "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 232
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 238
    if-nez p2, :cond_1

    .line 239
    iget-boolean v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;

    invoke-direct {v1, v3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 247
    .local v1, "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    .end local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;

    .line 254
    .restart local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    .line 255
    .local v0, "appInfo":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-boolean v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->banner:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayBanner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :goto_2
    return-object v3

    .line 243
    .end local v0    # "appInfo":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    .end local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 250
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_1

    .line 258
    .restart local v0    # "appInfo":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    .restart local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    :cond_2
    iget-object v4, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 259
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    # getter for: Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I
    invoke-static {v4}, Lcom/android/nfc/cardemulation/AppChooserActivity;->access$100(Lcom/android/nfc/cardemulation/AppChooserActivity;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 260
    iget-object v4, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v4, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
