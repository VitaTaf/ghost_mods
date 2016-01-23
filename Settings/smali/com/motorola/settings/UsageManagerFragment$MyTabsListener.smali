.class Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;
.super Ljava/lang/Object;
.source "UsageManagerFragment.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/UsageManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTabsListener"
.end annotation


# instance fields
.field public fragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/motorola/settings/UsageManagerFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/settings/UsageManagerFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;->this$0:Lcom/motorola/settings/UsageManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;->fragment:Landroid/app/Fragment;

    .line 48
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 52
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 56
    const v0, 0x7f0f01d5

    iget-object v1, p0, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/settings/UsageManagerFragment$MyTabsListener;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    return-void
.end method
