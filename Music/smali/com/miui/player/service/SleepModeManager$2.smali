.class final Lcom/miui/player/service/SleepModeManager$2;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/player/service/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/player/service/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/service/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 70
    iget-object v0, p0, Lcom/miui/player/service/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/player/service/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 71
    return-void
.end method
