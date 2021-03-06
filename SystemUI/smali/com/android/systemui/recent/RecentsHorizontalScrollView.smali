.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mSelectedTaskIndex:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-static {p1, p2, p0, v4}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private findIndexForView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scrollToItem(I)V
    .locals 8

    const/4 v7, 0x0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isPaddingOffsetRequired()Z

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    if-nez p1, :cond_2

    invoke-virtual {p0, v7, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    if-ge v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0

    return-void
.end method

.method private switchSelected(II)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private update()V
    .locals 10

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v7}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    :cond_0
    new-instance v4, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    new-instance v7, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v2, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    const v7, 0x7f0e006b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v3, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    invoke-direct {v3, p0, v6, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v7, 0x7f0e006e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    iget v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isPaddingOffsetRequired()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    add-int v2, v0, v13

    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    move-object v1, p1

    move v9, v8

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    :cond_2
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0e006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findIndexForView(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/16 v2, 0x15

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    iput v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollToItem(I)V

    :goto_1
    return v1

    :cond_1
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x16

    if-ne p1, v2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    iput v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollToItem(I)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_8

    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/16 v4, 0x17

    if-eq p1, v4, :cond_0

    const/16 v4, 0x42

    if-ne p1, v4, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x52

    if-ne p1, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v4, 0x7f0e006b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0e006f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2, v0, v1}, Lcom/android/systemui/recent/RecentsCallback;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onLayoutCallback()V

    :cond_0
    return-void
.end method

.method public onRecentsVisibilityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    new-instance v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
