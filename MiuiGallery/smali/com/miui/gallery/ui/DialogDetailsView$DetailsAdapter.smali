.class Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationIndex:I

.field final synthetic this$0:Lcom/miui/gallery/ui/DialogDetailsView;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/DialogDetailsView;Lcom/miui/gallery/data/MediaDetails;)V
    .locals 3
    .parameter
    .parameter "details"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {p1}, Lcom/miui/gallery/ui/DialogDetailsView;->access$200(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaDetails;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 123
    invoke-direct {p0, v0, p2}, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/miui/gallery/data/MediaDetails;)V

    .line 124
    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/miui/gallery/data/MediaDetails;)V
    .locals 19
    .parameter "context"
    .parameter "details"

    .prologue
    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 180
    .local v10, valueObj:Ljava/lang/Object;
    if-eqz v10, :cond_4

    const/4 v11, 0x1

    move v12, v11

    :goto_1
    const-string v13, "%s\'s value is Null"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/miui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v15

    invoke-static {v12, v13, v14}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 185
    .end local v10           #valueObj:Ljava/lang/Object;
    .local v9, value:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 186
    .local v5, key:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/MediaDetails;->hasUnit(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    const-string v11, "%s : %s %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/miui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/MediaDetails;->getUnit(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 193
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v5           #key:I
    .end local v9           #value:Ljava/lang/String;
    :sswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    move-object v6, v11

    check-cast v6, [D

    .line 132
    .local v6, latlng:[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v11}, Lcom/miui/gallery/ui/DialogDetailsView;->access$200(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v11, v6, v0}, Lcom/miui/gallery/ui/DetailsHelper;->resolveAddress(Lcom/miui/gallery/app/GalleryActivity;[DLcom/miui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .restart local v9       #value:Ljava/lang/String;
    goto :goto_2

    .line 137
    .end local v6           #latlng:[D
    .end local v9           #value:Ljava/lang/String;
    :sswitch_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 139
    .restart local v9       #value:Ljava/lang/String;
    goto :goto_2

    .line 142
    .end local v9           #value:Ljava/lang/String;
    :sswitch_2
    const-string v11, "1"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const v11, 0x7f0d008f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 145
    .restart local v9       #value:Ljava/lang/String;
    :goto_4
    goto/16 :goto_2

    .line 142
    .end local v9           #value:Ljava/lang/String;
    :cond_1
    const v11, 0x7f0d0090

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 148
    :sswitch_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaDetails$FlashState;

    .line 152
    .local v2, flash:Lcom/miui/gallery/data/MediaDetails$FlashState;
    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 153
    const v11, 0x7f0d0091

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #value:Ljava/lang/String;
    goto/16 :goto_2

    .line 155
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    const v11, 0x7f0d0092

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 157
    .restart local v9       #value:Ljava/lang/String;
    goto/16 :goto_2

    .line 160
    .end local v2           #flash:Lcom/miui/gallery/data/MediaDetails$FlashState;
    .end local v9           #value:Ljava/lang/String;
    :sswitch_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 161
    .restart local v9       #value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 164
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 165
    .local v7, time:D
    const-wide/high16 v11, 0x3ff0

    cmpg-double v11, v7, v11

    if-gez v11, :cond_3

    .line 166
    const-string v11, "1/%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3ff0

    div-double v16, v16, v7

    add-double v14, v14, v16

    double-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 168
    :cond_3
    double-to-int v4, v7

    .line 169
    .local v4, integer:I
    int-to-double v11, v4

    sub-double/2addr v7, v11

    .line 170
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    const-wide v11, 0x3f1a36e2eb1c432dL

    cmpl-double v11, v7, v11

    if-lez v11, :cond_0

    .line 172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " 1/%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-wide/high16 v15, 0x3fe0

    const-wide/high16 v17, 0x3ff0

    div-double v17, v17, v7

    add-double v15, v15, v17

    double-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 180
    .end local v4           #integer:I
    .end local v7           #time:D
    .end local v9           #value:Ljava/lang/String;
    .restart local v10       #valueObj:Ljava/lang/Object;
    :cond_4
    const/4 v11, 0x0

    move v12, v11

    goto/16 :goto_1

    .line 190
    .end local v10           #valueObj:Ljava/lang/Object;
    .restart local v5       #key:I
    .restart local v9       #value:Ljava/lang/String;
    :cond_5
    const-string v11, "%s : %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/miui/gallery/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 195
    .end local v1           #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v5           #key:I
    .end local v9           #value:Ljava/lang/String;
    :cond_6
    return-void

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x66 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mDetails:Lcom/miui/gallery/data/MediaDetails;
    invoke-static {v0}, Lcom/miui/gallery/ui/DialogDetailsView;->access$300(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 216
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 221
    if-nez p2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v1}, Lcom/miui/gallery/ui/DialogDetailsView;->access$200(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    .local v0, tv:Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 225
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #tv:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    .line 234
    return-void
.end method
