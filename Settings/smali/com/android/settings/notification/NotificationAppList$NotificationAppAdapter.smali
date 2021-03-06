.class Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/NotificationAppList$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationAppList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method

.method private getSubtitle(Lcom/android/settings/notification/NotificationAppList$AppRow;)Ljava/lang/String;
    .locals 5
    .param p1, "row"    # Lcom/android/settings/notification/NotificationAppList$AppRow;

    .prologue
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->banned:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->access$200(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0909f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->sensitive:Z

    if-nez v2, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->access$200(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0909f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "priString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->access$200(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0909f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "senString":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    iget-boolean v3, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->sensitive:Z

    if-eq v2, v3, :cond_3

    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppList;->access$200(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090a01

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationAppList$Row;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationAppList$Row;
    .param p3, "animate"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    instance-of v4, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-nez v4, :cond_0

    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/settings/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .local v0, "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;

    .local v3, "vh":Lcom/android/settings/notification/NotificationAppList$ViewHolder;
    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    iget-object v7, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v4, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->first:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v7, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;Lcom/android/settings/notification/NotificationAppList$AppRow;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getSubtitle(Lcom/android/settings/notification/NotificationAppList$AppRow;)Ljava/lang/String;

    move-result-object v1

    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    move v4, v6

    goto :goto_1

    .restart local v1    # "sub":Ljava/lang/String;
    :cond_2
    move v6, v5

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .local v0, "r":Lcom/android/settings/notification/NotificationAppList$Row;
    instance-of v1, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "sectionIndex"    # I

    .prologue
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/notification/NotificationAppList;->access$300(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "section":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getCount()I

    move-result v1

    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationAppList$Row;

    .local v2, "r":Lcom/android/settings/notification/NotificationAppList$Row;
    iget-object v4, v2, Lcom/android/settings/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "i":I
    .end local v2    # "r":Lcom/android/settings/notification/NotificationAppList$Row;
    :goto_1
    return v0

    .restart local v0    # "i":I
    .restart local v2    # "r":Lcom/android/settings/notification/NotificationAppList$Row;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "r":Lcom/android/settings/notification/NotificationAppList$Row;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .local v0, "row":Lcom/android/settings/notification/NotificationAppList$Row;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppList;->access$300(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->access$300(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppList;->access$300(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .local v0, "r":Lcom/android/settings/notification/NotificationAppList$Row;
    if-nez p2, :cond_0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppList$Row;)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationAppList$Row;Z)V

    return-object v1

    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppList$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationAppList$Row;

    .prologue
    const/4 v4, 0x0

    instance-of v2, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->access$000(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationAppList;

    # getter for: Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->access$000(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006c

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/NotificationAppList$ViewHolder;-><init>(Lcom/android/settings/notification/NotificationAppList$1;)V

    .local v1, "vh":Lcom/android/settings/notification/NotificationAppList$ViewHolder;
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
